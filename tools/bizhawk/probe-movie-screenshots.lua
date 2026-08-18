-- Boots with zero controller input past the documented memory-card-setup
-- dialogs (see docs/tooling/bizhawk-harness.md's "Boot-setup dialogs"), then
-- replays the exact D-Pad/Circle presses recorded in
-- runtime/bizhawk/init_to_gameplay.bk2, taking a screenshot at five fixed
-- frame checkpoints. Companion of run-probe.ps1's -LuaPath parameter.
--
-- The presses below are not a synthetic guess: they are the init_to_gameplay
-- movie's own "Input Log.txt" (inside the .bk2 zip), losslessly transcribed
-- to (start_frame, end_frame, button) triples via a run-length encoding of
-- its per-frame button field (17 digital buttons; the four analog-stick
-- fields never left neutral 128 anywhere in the movie, so they are not
-- replayed here). Baked into Lua and driven with joypad.set frame-by-frame
-- rather than replayed as an actual movie because passing the same .bk2 to
-- run-probe.ps1's -MoviePath produced byte-for-byte the same five
-- screenshots as a zero-input run (including at frame 5050, long after every
-- recorded press) in two independent runs on 2026-08-18 -- the CLI --movie
-- flag loads without error but does not actually drive input in this
-- BizHawk 2.11 x64/Nymashock build, for reasons not further diagnosed here.
-- joypad.set-driven replay is the same fallback pattern already proven
-- reliable in this repo for a different broken automation mechanism (see
-- probe-inst-demo-watch.lua's on_bus_* notes).
local output_dir = rawget(_G, "RIE_BIZHAWK_OUTPUT") or os.getenv("RIE_BIZHAWK_OUTPUT")
local requested_frames = tonumber(rawget(_G, "RIE_BIZHAWK_FRAMES") or os.getenv("RIE_BIZHAWK_FRAMES") or "5100")
if output_dir == nil or output_dir == "" then error("RIE_BIZHAWK_OUTPUT is required") end

local stage_path = output_dir .. "\\probe-stage.log"
local function checkpoint(message)
    local stage_file = assert(io.open(stage_path, "ab"))
    stage_file:write(message .. "\n")
    stage_file:close()
end

checkpoint("lua-started")

local checkpoints = { 1200, 2150, 2400, 2700, 5050 }
local captured = {}
local function quote(v) return '"' .. v .. '"' end

emu.limitframerate(false)
client.displaymessages(false)
checkpoint("apis-configured")

-- (start_frame, end_frame, button) triples transcribed from
-- runtime/bizhawk/init_to_gameplay.bk2's Input Log.txt, inclusive on both
-- ends, in ascending non-overlapping order.
local BUTTON_NAMES = {
    U = "D-Pad Up",
    D = "D-Pad Down",
    L = "D-Pad Left",
    R = "D-Pad Right",
    O = "\226\151\139", -- ○ (U+25CB), the bare Nymashock/Octoshock button name
}
local events = {
    { 1508, 1511, "O" },
    { 1540, 1543, "O" },
    { 1616, 1619, "O" },
    { 1647, 1650, "O" },
    { 1736, 1739, "O" },
    { 1766, 1769, "O" },
    { 1876, 1879, "O" },
    { 2066, 2069, "O" },
    { 2170, 2174, "O" },
    { 2291, 2296, "R" },
    { 2314, 2318, "L" },
    { 2346, 2350, "O" },
    { 2568, 2572, "R" },
    { 2606, 2609, "O" },
    { 2874, 2880, "R" },
    { 2911, 2915, "D" },
    { 2922, 2927, "D" },
    { 2941, 2946, "R" },
    { 3075, 3081, "D" },
    { 3086, 3090, "D" },
    { 3114, 3117, "O" },
    { 3557, 3561, "L" },
    { 3581, 3586, "L" },
    { 3593, 3599, "D" },
    { 3605, 3609, "U" },
    { 3618, 3623, "R" },
    { 3632, 3636, "R" },
    { 3781, 3786, "R" },
    { 3794, 3799, "D" },
    { 3819, 3823, "R" },
    { 3833, 3837, "L" },
    { 3847, 3852, "D" },
    { 3871, 3875, "L" },
    { 3884, 3889, "U" },
    { 3897, 3904, "D" },
    { 3923, 3928, "U" },
    { 3935, 3941, "L" },
    { 3949, 3954, "R" },
    { 3973, 3978, "L" },
    { 3986, 3990, "R" },
    { 3997, 4002, "D" },
    { 4023, 4027, "U" },
    { 4048, 4053, "D" },
    { 4074, 4078, "R" },
    { 4085, 4090, "L" },
    { 4098, 4102, "R" },
    { 4124, 4128, "U" },
    { 4135, 4141, "R" },
    { 4148, 4152, "U" },
    { 4174, 4179, "D" },
    { 4187, 4192, "L" },
    { 4200, 4205, "D" },
    { 4226, 4230, "L" },
    { 4238, 4242, "R" },
    { 4250, 4255, "D" },
    { 4275, 4280, "U" },
    { 4286, 4291, "L" },
    { 4300, 4305, "D" },
    { 4326, 4331, "U" },
    { 4339, 4343, "R" },
    { 4350, 4355, "D" },
    { 4374, 4378, "L" },
    { 4388, 4392, "D" },
    { 4427, 4431, "U" },
    { 4463, 4468, "D" },
    { 4477, 4481, "U" },
    { 4489, 4493, "D" },
    { 4502, 4506, "U" },
    { 4514, 4518, "R" },
    { 4537, 4542, "R" },
    { 4552, 4556, "D" },
    { 4579, 4582, "U" },
    { 4613, 4617, "L" },
    { 4624, 4629, "D" },
    { 4638, 4643, "L" },
    { 4650, 4655, "D" },
    { 4663, 4667, "U" },
    { 4676, 4680, "R" },
}
checkpoint("events-loaded:" .. tostring(#events))

local event_idx = 1
for frame = 1, requested_frames do
    while events[event_idx] and events[event_idx][2] < frame do
        event_idx = event_idx + 1
    end
    local e = events[event_idx]
    local buttons = {}
    if e and frame >= e[1] and frame <= e[2] then
        buttons[BUTTON_NAMES[e[3]]] = true
    end
    joypad.set(buttons, 1)
    emu.frameadvance()

    for _, cp in ipairs(checkpoints) do
        if frame == cp then
            local name = string.format("movie-frame-%05d.png", frame)
            client.screenshot(output_dir .. "\\" .. name)
            table.insert(captured, name)
            checkpoint("screenshot:" .. name)
        end
    end
end
checkpoint("frame-loop-complete")

local file = assert(io.open(output_dir .. "\\report.json", "wb"))
file:write("{\n  \"schema_version\": 1,\n  \"requested_frames\": ", tostring(requested_frames), ",\n  \"final_frame\": ", tostring(emu.framecount()), ",\n  \"screenshots\": [")
for i, name in ipairs(captured) do
    if i > 1 then file:write(", ") end
    file:write(quote(name))
end
file:write("]\n}\n")
file:close()
checkpoint("report-written")
client.exitCode(0)
