local output_dir = rawget(_G, "RIE_BIZHAWK_OUTPUT") or os.getenv("RIE_BIZHAWK_OUTPUT")
local requested_frames = tonumber(rawget(_G, "RIE_BIZHAWK_FRAMES") or os.getenv("RIE_BIZHAWK_FRAMES") or "600")

if output_dir == nil or output_dir == "" then error("RIE_BIZHAWK_OUTPUT is required") end

local function write_json(path, rows)
    local file = assert(io.open(path, "wb"))
    file:write(table.concat(rows, "\n"))
    file:write("\n")
    file:close()
end

local function hex(value) return string.format("0x%08x", value) end
local function read_u32(address) return memory.read_u32_le(address, "Main RAM") end

-- PS1 virtual addresses 0x800e2940 and 0x800e2958 masked into Main RAM.
local REQUEST_SIZE = 0x000e2940
local CURRENT_LBA = 0x000e2958
local events = {}
local previous_lba = nil
local previous_size = nil

emu.limitframerate(false)
client.displaymessages(false)
local start_frame = emu.framecount()
for _ = 1, requested_frames do
    local lba = read_u32(CURRENT_LBA)
    local size = read_u32(REQUEST_SIZE)
    if lba ~= previous_lba or size ~= previous_size then
        table.insert(events, { frame = emu.framecount(), lba = lba, size = size })
        previous_lba = lba
        previous_size = size
    end
    joypad.set({}, 1)
    emu.frameadvance()
end

local event_rows = {}
for _, event in ipairs(events) do
    table.insert(event_rows, "    {\"frame\":" .. event.frame
        .. ",\"lba\":" .. event.lba
        .. ",\"lba_hex\":\"" .. hex(event.lba)
        .. "\",\"request_size\":" .. event.size
        .. ",\"request_size_hex\":\"" .. hex(event.size) .. "\"}")
end
write_json(output_dir .. "\\report.json", {
    "{",
    "  \"schema_version\": 1,",
    "  \"probe\": \"probe-cd-reads.lua\",",
    "  \"bizhawk_version\": \"" .. client.getversion() .. "\",",
    "  \"start_frame\": " .. start_frame .. ",",
    "  \"requested_frames\": " .. requested_frames .. ",",
    "  \"final_frame\": " .. emu.framecount() .. ",",
    "  \"cd_read_events\": [",
    table.concat(event_rows, ",\n"),
    "  ]",
    "}"
})
client.exitCode(0)
