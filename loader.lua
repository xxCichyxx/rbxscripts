local cfg = {
    [138365924124161] = "https://raw.githubusercontent.com/xxCichyxx/rbxscripts/refs/heads/main/backrooms.lua",
    [3351674303]      = "https://raw.githubusercontent.com/xxCichyxx/rbxscripts/refs/heads/main/DrivingEmpireXeno.lua"
}
local url = cfg[game.PlaceId]
if url then
    local s, res = pcall(game.HttpGet, game, url)
    if s then
        loadstring(res)()
    end
end