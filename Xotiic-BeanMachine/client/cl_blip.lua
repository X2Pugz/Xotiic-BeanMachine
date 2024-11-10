local QBCore = exports['qb-core']:GetCoreObject()


-- Blips
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(121.8047, -1042.3098, 29.2779, 232.5000)
    
    SetBlipSprite (blip, 106)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.9)
    SetBlipColour (blip, 73)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Bean Machine')
    EndTextCommandSetBlipName(blip)
end)