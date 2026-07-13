local output_dir = rawget(_G, "RIE_BIZHAWK_OUTPUT") or os.getenv("RIE_BIZHAWK_OUTPUT")
local requested_frames = tonumber(rawget(_G, "RIE_BIZHAWK_FRAMES") or os.getenv("RIE_BIZHAWK_FRAMES") or "600")

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

emu.limitframerate(false)
client.displaymessages(false)
checkpoint("apis-configured")

local start_frame = emu.framecount()
for _ = 1, requested_frames do
    joypad.set({}, 1)
    emu.frameadvance()
end
checkpoint("frames-complete")

local domains = memory.getmemorydomainlist()
checkpoint("domains-returned:" .. type(domains))
local domain_rows = {}
for _, domain in pairs(domains) do
    local size = memory.getmemorydomainsize(domain)
    local sample_size = math.min(size, 4096)
    local sample_hash = ""
    if sample_size > 0 then
        sample_hash = memory.hash_region(0, sample_size, domain)
    end
    table.insert(domain_rows,
        "    {\"name\":" .. quoted(domain)
        .. ",\"size\":" .. tostring(size)
        .. ",\"first_4096_hash\":" .. quoted(sample_hash) .. "}")
end
table.sort(domain_rows)
checkpoint("domains-hashed")

local screenshot_path = join_path(output_dir, "final-frame.png")
client.screenshot(screenshot_path)
checkpoint("screenshot-requested")

local report = {
    "{",
    "  \"schema_version\": 1,",
    "  \"bizhawk_version\": " .. quoted(client.getversion()) .. ",",
    "  \"lua_engine\": " .. quoted(client.get_lua_engine()) .. ",",
    "  \"system_id\": " .. quoted(emu.getsystemid()) .. ",",
    "  \"display_type\": " .. quoted(emu.getdisplaytype()) .. ",",
    "  \"game_name\": " .. quoted(gameinfo.getromname()) .. ",",
    "  \"game_hash\": " .. quoted(gameinfo.getromhash()) .. ",",
    "  \"database_status\": " .. quoted(gameinfo.getstatus()) .. ",",
    "  \"start_frame\": " .. tostring(start_frame) .. ",",
    "  \"requested_frames\": " .. tostring(requested_frames) .. ",",
    "  \"final_frame\": " .. tostring(emu.framecount()) .. ",",
    "  \"lag_count\": " .. tostring(emu.lagcount()) .. ",",
    "  \"total_executed_cycles\": " .. tostring(emu.totalexecutedcycles()) .. ",",
    "  \"memory_domains\": [",
    table.concat(domain_rows, ",\n"),
    "  ],",
    "  \"screenshot\": \"final-frame.png\"",
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
