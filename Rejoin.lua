local TeleportService = game:GetService("TeleportService")
local Players game:GetService("Players")
local Local_Player = game:GetService("Players").LocalPlayer
local Destination = game.PlaceId

local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(Destination, Local_Player)
    end)

    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)

coroutine.resume(Rejoin)
