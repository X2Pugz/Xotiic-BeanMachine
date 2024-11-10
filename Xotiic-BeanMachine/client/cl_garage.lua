local QBCore = exports['qb-core']:GetCoreObject()

----- | CREATING GARAGE MENU | -----
lib.registerContext({
    id = 'beanmachine_garage',
    title = 'BeanMachine Garage',
    options = {
        {
            title = 'Car',
            description = 'Pull out Car',
            icon = 'car',
            event = 'Xotiic-BeanMachine:client:spawnCar'
        },
        {
            title = 'Bike',
            description = 'Pull out Bike',
            icon = 'motorcycle',
            event = 'Xotiic-BeanMachine:client:spawnBike'
        },
    },
})


RegisterNetEvent('Xotiic-BeanMachine:client:garageMenu', function()
    lib.showContext('beanmachine_garage')
end)


lib.registerContext({
    id = 'beanmachine_garage',
    title = 'BeanMachine Garage',
    options = {
        {
            title = 'Car',
            description = 'Pull out Car',
            icon = 'car',
            event = 'Xotiic-BeanMachine:client:spawnCar'
        },
        {
            title = 'Bike',
            description = 'Pull out Bike',
            icon = 'motorcycle',
            event = 'Xotiic-BeanMachine:client:spawnBike'
        },
    },
})


RegisterNetEvent('Xotiic-BeanMachine:client:storeGarage', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if DecorExistOn((veh), "t_vehicle") then
        QBCore.Functions.DeleteVehicle(veh)
        lib.notify({
            id = 'beanmachine_garage',
            title = 'BeanMachine Garage',
            description = 'You returned the vehicle.',
            showDuration = false,
            position = 'top-right',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'square-parking',
            iconColor = '#F08080'
        })
    else
        lib.notify({
            id = 'beanmachine_garage',
            title = 'BeanMachine Garage',
            description = 'This is not a work vehicle.',
            showDuration = false,
            position = 'top-right',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'square-parking',
            iconColor = '#F08080'
        })
    end
end)


RegisterNetEvent('Xotiic-BeanMachine:client:spawnCar', function(carvehicle)
    local carvehicle = Config.CarVehicle
    local carcoords = Config.CarSpawn
    QBCore.Functions.SpawnVehicle(carvehicle, function(carveh)
        SetVehicleNumberPlateText(carveh, "BEAN")
        DecorSetFloat(carveh, "t_vehicle", 1)
        SetEntityAsMissionEntity(carveh, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), carveh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(carveh))
        SetVehicleEngineOn(carveh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(carveh)
        SetVehicleFuelLevel(carveh, 500.0)
        SetVehicleDirtLevel(carveh, 0)
    end, carcoords, true)
end)


RegisterNetEvent('Xotiic-BeanMachine:client:spawnBike', function(bikevehicle)
    local bikevehicle = Config.BikeVehicle
    local bikecoords = Config.BikeSpawn
    QBCore.Functions.SpawnVehicle(bikevehicle, function(bikeveh)
        SetVehicleNumberPlateText(bikevehicle, "BEAN")
        DecorSetFloat(bikeveh, "t_vehicle", 1)
        SetEntityAsMissionEntity(bikeveh, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), bikeveh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(bikeveh))
        SetVehicleEngineOn(bikeveh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(bikeveh)
        SetVehicleFuelLevel(bikeveh, 275.0)
        SetVehicleDirtLevel(bikeveh, 0)
    end, bikecoords, true)
end)
