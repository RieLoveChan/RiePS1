-- Dynamic memory-access probe for the DDR 5th Mix (Japan) HOW TO PLAY overlay's
-- three data sub-ranges that were unresolved when this historical dynamic
-- pass was written (the later static fourth/fifth passes resolve them; see
-- docs/games/ddr-5th-mix-jp-inst-demo-overlay-map.csv). Runs the attract loop
-- with no controller input (aside from a documented one-time boot setup, see
-- below), detects the HOW TO PLAY ("inst demo") overlay's active window by
-- polling the documented screen-index global DAT_800f2908 (see
-- docs/games/ddr-5th-mix-jp-globals.md), then watches the three target ranges
-- (plus a known-active control range) for byte-level value changes every
-- frame during that window.
--
-- Mechanism note: BizHawk's event.on_bus_read/on_bus_write/on_bus_exec API
-- exists in this build (verified against BizHawk.Client.Common.dll strings
-- and BizHawk's own EventsLuaLibrary.cs/Octoshock.IDebuggable.cs source at
-- tag 2.11) but was found NON-FUNCTIONAL for this session's actual PSX core
-- ("Nymashock", a Waterbox/Nyma-wrapped core per this BizHawk build's
-- config.ini -- distinct from the classic direct-P/Invoke "Octoshock" class
-- the tag-2.11 source models): event.availableScopes() returns zero scopes,
-- so every on_bus_* registration silently resolves to the library's
-- documented empty-GUID "no callback available" sentinel instead of
-- erroring, and a control hook on the overlay's own Update Entry point
-- (documented as called unconditionally every active frame) never fired
-- once across a full HOW TO PLAY window. This was confirmed with a
-- dedicated diagnostic before trusting any hook-based result. Byte-level
-- polling below uses only plain memory.read_u8, which does not depend on
-- this mechanism and is confirmed working throughout this script.
--
-- Does not overwrite tools/bizhawk/probe.lua. Companion of run-probe.ps1's
-- -LuaPath parameter. See docs/tooling/bizhawk-harness.md.

local output_dir = rawget(_G, "RIE_BIZHAWK_OUTPUT") or os.getenv("RIE_BIZHAWK_OUTPUT")
local requested_frames = tonumber(rawget(_G, "RIE_BIZHAWK_FRAMES") or os.getenv("RIE_BIZHAWK_FRAMES") or "13000")

if output_dir == nil or output_dir == "" then
    error("RIE_BIZHAWK_OUTPUT is required")
end

local stage_path = output_dir .. "\\probe-stage.log"
local function checkpoint(message)
    local stage_file = assert(io.open(stage_path, "ab"))
    stage_file:write(message .. "\n")
    stage_file:close()
end

checkpoint("lua-started")

local function join_path(left, right)
    return left .. "\\" .. right
end

local function json_escape(value)
    return tostring(value)
        :gsub("\\", "\\\\")
        :gsub('"', '\\"')
        :gsub("\b", "\\b")
        :gsub("\f", "\\f")
        :gsub("\n", "\\n")
        :gsub("\r", "\\r")
        :gsub("\t", "\\t")
end

local function quoted(value)
    return '"' .. json_escape(value or "") .. '"'
end

local function hex32(v)
    if v == nil then return nil end
    return string.format("0x%08x", v & 0xFFFFFFFF)
end

emu.limitframerate(false)
client.displaymessages(false)
checkpoint("apis-configured")

memory.usememorydomain("MainRAM")

-- ---------------------------------------------------------------------
-- Target ranges, per docs/games/ddr-5th-mix-jp-inst-demo-overlay-map.csv
-- ---------------------------------------------------------------------
local ranges = {
    { name = "zero_run_a", lo = 0x801e6b6c, hi = 0x801e6b83 }, -- 24 B all-zero
    { name = "small_table_b", lo = 0x801e6b84, hi = 0x801e6ba3 }, -- 32 B small-byte table
    { name = "zero_run_c", lo = 0x801e6c4c, hi = 0x801e6c63 }, -- 24 B all-zero
    -- Control range only: first 4 bytes of the already-resolved 14-entry
    -- timing table, documented as read every active frame by
    -- FUN_801e5758/FUN_801e5d74 (see the overlay concept's "Second
    -- resolution pass"). Used solely as a sanity indicator; a write-value
    -- change here is not expected (it's a read-only consumer per statics),
    -- so this control mainly documents polling-window sizing, not mechanism
    -- validity (byte polling has no hook to validate independently).
    { name = "control_known_active", lo = 0x801e6ba4, hi = 0x801e6ba7 },
}

-- DAT_800f2908: documented 16-bit screen-name-index global
-- (docs/games/ddr-5th-mix-jp-globals.md). Physical/MainRAM-domain offset.
local SCREEN_INDEX_PHYS = 0x800f2908 & 0x1FFFFF
local PLAY_DEMO_INDEX = 0x24 -- state 5 / HOW TO PLAY overlay, per screen-flow.md

-- Phase bounds (frames). Generous margin over the documented tick budget:
-- WARNING through-state ~1506 + TITLE 481 = ~1987 ticks before state 5 starts;
-- state 5's own scripted duration is 1,910 ticks. Ticks vs. frames is verified
-- empirically below (screen_index_trace), not assumed.
local PHASE1_CAP = 6000 -- max frames to wait for the first PLAY_DEMO_INDEX sighting
local WATCH_HARD_CAP = 3000 -- max frames the byte-level watch may stay active
local EXIT_BUFFER = 60 -- extra frames to keep watching after the screen index changes away

-- ---------------------------------------------------------------------
-- One-time boot setup: BizHawk mounts a freshly-blank virtual memory
-- card, which this game detects as "card present but no system data" and
-- blocks on a YES/NO prompt (real, documented behavior per
-- docs/games/ddr-5th-mix-jp-screen-flow.md's "Memory Card Auto Load" boot
-- step) -- not a synthetic skip of the attract loop. Confirmed empirically
-- (screenshots) as exactly two sequential dialogs: "no system data,
-- create?" then a "start as-is?" confirmation, both dismissed by a single
-- Circle ("\226\151\139", U+25CB) press each, using the real button name
-- from joypad.get(1) (BizHawk's Nymashock/Octoshock PSX core exposes bare
-- "\226\151\139"/"\226\150\161"/"\226\150\179"/"X", not "P1 Circle"). Each
-- press is held ~10 frames, not 1-2: BizHawk can silently drop a 1-2 frame
-- press during a lag frame (see docs/tooling/bizhawk-harness.md). Confirming
-- these two boot-only dialogs is the one narrow, documented exception to
-- the zero-input methodology; every frame from here through the HOW TO
-- PLAY window is zero-input exactly as designed. Dismissing them drops
-- into the title/PUSH START main menu (per screen-flow.md, state 1), whose
-- own documented 900-frame inactivity timeout returns to outer state 0
-- (attract loop), reentering at its WARNING child state because the
-- inherited screen index is 0x1c (PUSH START) -- both facts are cited, not
-- assumed, in screen-flow.md's "outer state 2"/attract sections.
-- ---------------------------------------------------------------------
local function advance_idle(n)
    for _ = 1, n do
        joypad.set({}, 1)
        emu.frameadvance()
    end
end

local function advance_with(n, buttons)
    for _ = 1, n do
        joypad.set(buttons, 1)
        emu.frameadvance()
    end
end

checkpoint("boot-setup-start")
advance_idle(1650) -- reach "system data" prompt (empirically confirmed present by frame ~1600)
advance_with(10, { ["\226\151\139"] = true }) -- Circle, held 10 frames: decline/confirm first dialog
advance_idle(30)
advance_with(10, { ["\226\151\139"] = true }) -- Circle, held 10 frames: confirm second ("start as-is?") dialog
advance_idle(30)
checkpoint("boot-setup-dialogs-done:" .. tostring(emu.framecount()))

advance_idle(1000) -- >900-frame main-menu inactivity timeout back to the attract loop
checkpoint("boot-setup-idle-done:" .. tostring(emu.framecount()))

checkpoint("phase1-search-start")

local screen_index_trace = {}
local last_index = nil

local state5_entry_frame = nil
local state5_exit_frame = nil
local watch_active = false
local watch_stopped_frame = nil
local abort_reason = nil
local state5_entry_screen_state = nil

-- Byte-level watch state, keyed by range name.
local watch_state = {}
for _, r in ipairs(ranges) do
    watch_state[r.name] = {
        baseline = nil, -- {addr_phys -> value} at watch start
        last = nil, -- {addr_phys -> value} as of the previous polled frame
        changes = {}, -- list of {frame, addr_phys, old, new}
    }
end

local CHANGE_CAP_PER_RANGE = 2000

local function snapshot_range(r)
    local snap = {}
    for a = r.lo, r.hi do
        local phys = a & 0x1FFFFF
        snap[phys] = memory.read_u8(phys)
    end
    return snap
end

local function start_watch()
    for _, r in ipairs(ranges) do
        local snap = snapshot_range(r)
        watch_state[r.name].baseline = snap
        watch_state[r.name].last = snap
    end
    checkpoint("watch-started")
end

local function poll_watch(frame)
    for _, r in ipairs(ranges) do
        local st = watch_state[r.name]
        for a = r.lo, r.hi do
            local phys = a & 0x1FFFFF
            local v = memory.read_u8(phys)
            local prev = st.last[phys]
            if v ~= prev then
                if #st.changes < CHANGE_CAP_PER_RANGE then
                    table.insert(st.changes, { frame = frame, addr_phys = phys, old = prev, new = v })
                end
                st.last[phys] = v
            end
        end
    end
end

local start_frame = emu.framecount()
local final_i = 0
local screenshot_entry_path = nil

for i = 1, requested_frames do
    joypad.set({}, 1)
    emu.frameadvance()
    final_i = i

    local idx = memory.read_u16_le(SCREEN_INDEX_PHYS)
    if idx ~= last_index then
        table.insert(screen_index_trace, { frame = emu.framecount(), value = idx })
        last_index = idx
    end

    if state5_entry_frame == nil then
        if idx == PLAY_DEMO_INDEX then
            state5_entry_frame = emu.framecount()
            checkpoint("state5-entry:" .. tostring(state5_entry_frame))
            start_watch()
            watch_active = true
            screenshot_entry_path = join_path(output_dir, "state5-entry-frame.png")
            client.screenshot(screenshot_entry_path)
        elseif i >= PHASE1_CAP then
            abort_reason = "state5_not_detected_within_phase1_cap"
            checkpoint("abort:" .. abort_reason)
            break
        end
    elseif watch_active then
        poll_watch(emu.framecount())
        local since_entry_for_shot = emu.framecount() - state5_entry_frame
        if since_entry_for_shot == 900 then
            client.screenshot(join_path(output_dir, "state5-midwindow-frame.png"))
            checkpoint("state5-midwindow-screenshot:" .. tostring(emu.framecount()))
        end
        if state5_exit_frame == nil and idx ~= PLAY_DEMO_INDEX then
            state5_exit_frame = emu.framecount()
            checkpoint("state5-exit:" .. tostring(state5_exit_frame))
        end
        local since_entry = emu.framecount() - state5_entry_frame
        local past_exit = state5_exit_frame ~= nil and (emu.framecount() - state5_exit_frame) >= EXIT_BUFFER
        if past_exit or since_entry >= WATCH_HARD_CAP then
            watch_active = false
            watch_stopped_frame = emu.framecount()
            checkpoint("watch-stopped:" .. tostring(watch_stopped_frame))
            break
        end
    end
end

checkpoint("frame-loop-complete")

local screenshot_path = join_path(output_dir, "final-frame.png")
client.screenshot(screenshot_path)
checkpoint("screenshot-requested")

-- ---------------------------------------------------------------------
-- Report
-- ---------------------------------------------------------------------
local function num_or_null(v)
    if v == nil then return "null" end
    return tostring(v)
end

local trace_rows = {}
for _, t in ipairs(screen_index_trace) do
    table.insert(trace_rows, "    {\"frame\":" .. tostring(t.frame) .. ",\"value\":" .. tostring(t.value) .. "}")
end

local range_report_rows = {}
for _, r in ipairs(ranges) do
    local st = watch_state[r.name]
    local change_rows = {}
    for _, c in ipairs(st.changes) do
        table.insert(change_rows,
            "      {\"frame\":" .. tostring(c.frame)
            .. ",\"addr_phys\":" .. quoted(hex32(c.addr_phys))
            .. ",\"old\":" .. tostring(c.old)
            .. ",\"new\":" .. tostring(c.new) .. "}")
    end
    table.insert(range_report_rows,
        "    {\"name\":" .. quoted(r.name)
        .. ",\"lo\":" .. quoted(hex32(r.lo))
        .. ",\"hi\":" .. quoted(hex32(r.hi))
        .. ",\"change_count\":" .. tostring(#st.changes)
        .. ",\"changes\":[\n" .. table.concat(change_rows, ",\n") .. "\n    ]}")
end

local report = {
    "{",
    "  \"schema_version\": 2,",
    "  \"probe\": \"probe-inst-demo-watch\",",
    "  \"method\": \"per_frame_byte_poll\",",
    "  \"bus_hook_mechanism_status\": \"confirmed_nonfunctional_for_this_core_session\",",
    "  \"bizhawk_version\": " .. quoted(client.getversion()) .. ",",
    "  \"lua_engine\": " .. quoted(client.get_lua_engine()) .. ",",
    "  \"system_id\": " .. quoted(emu.getsystemid()) .. ",",
    "  \"display_type\": " .. quoted(emu.getdisplaytype()) .. ",",
    "  \"game_name\": " .. quoted(gameinfo.getromname()) .. ",",
    "  \"game_hash\": " .. quoted(gameinfo.getromhash()) .. ",",
    "  \"database_status\": " .. quoted(gameinfo.getstatus()) .. ",",
    "  \"start_frame\": " .. tostring(start_frame) .. ",",
    "  \"requested_frames\": " .. tostring(requested_frames) .. ",",
    "  \"frames_advanced\": " .. tostring(final_i) .. ",",
    "  \"final_frame\": " .. tostring(emu.framecount()) .. ",",
    "  \"lag_count\": " .. tostring(emu.lagcount()) .. ",",
    "  \"abort_reason\": " .. (abort_reason and quoted(abort_reason) or "null") .. ",",
    "  \"screen_index_phys_offset\": " .. quoted(hex32(SCREEN_INDEX_PHYS)) .. ",",
    "  \"play_demo_index\": " .. tostring(PLAY_DEMO_INDEX) .. ",",
    "  \"state5_entry_frame\": " .. num_or_null(state5_entry_frame) .. ",",
    "  \"state5_exit_frame\": " .. num_or_null(state5_exit_frame) .. ",",
    "  \"watch_stopped_frame\": " .. num_or_null(watch_stopped_frame) .. ",",
    "  \"phase1_cap\": " .. tostring(PHASE1_CAP) .. ",",
    "  \"watch_hard_cap\": " .. tostring(WATCH_HARD_CAP) .. ",",
    "  \"exit_buffer\": " .. tostring(EXIT_BUFFER) .. ",",
    "  \"screen_index_trace\": [",
    table.concat(trace_rows, ",\n"),
    "  ],",
    "  \"ranges\": [",
    table.concat(range_report_rows, ",\n"),
    "  ],",
    "  \"screenshot\": \"final-frame.png\",",
    "  \"state5_entry_screenshot\": " .. (screenshot_entry_path and quoted("state5-entry-frame.png") or "null"),
    "}",
}

local report_path = join_path(output_dir, "report.json")
local report_file, open_error = io.open(report_path, "wb")
if report_file == nil then
    error("cannot create report: " .. tostring(open_error))
end
report_file:write(table.concat(report, "\n"))
report_file:write("\n")
report_file:close()
checkpoint("report-written")

client.exitCode(0)
