local QBCore = exports['qb-core']:GetCoreObject()

local deliveryBlip = nil
local inJob = false

----- | CREATING MODEL SPAWN | -----
local function FetchModel(model)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(model) do
        Wait(100)
    end
end

local LocalNPCs = {}

local function GetLocalNPC(index)
    return LocalNPCs[index]
end

local function CreateLocalNPC(index)
    if (LocalNPCs[index]) then
        DestroyLocalNPC(index)
    end

    LocalNPCs[index] = {}
    local cfg = Config.BeanMachineDeliveryPed[index]

    FetchModel(cfg.BeanMachineDeliveryPedModel)

    ----- | CREATING PED | -----
    local BeanMachineDeliveryPed = CreatePed(1, cfg.BeanMachineDeliveryPedModel, cfg.BeanMachineDeliveryPedLocation, false, true)
    FreezeEntityPosition(BeanMachineDeliveryPed, true)
    SetEntityInvincible(BeanMachineDeliveryPed, true)
    SetBlockingOfNonTemporaryEvents(BeanMachineDeliveryPed, true)
    SetPedComponentVariation(BeanMachineDeliveryPed, 3, 0, 0, 1)
    SetPedComponentVariation(BeanMachineDeliveryPed, 4, 0, 0, 1)
    SetPedComponentVariation(BeanMachineDeliveryPed, 6, 0, 0, 1)
    SetPedComponentVariation(BeanMachineDeliveryPed, 0, 1, 0, 1)
    ----- | CREATING TARGET FOR PED | -----
        exports['qb-target']:AddTargetEntity(BeanMachineDeliveryPed, {
            options = {
                {
                    type = "client",
                    event = "Xotiic-BeanMachine:client:DeliveryStartAlert",
                    icon = "fa-solid fa-house",
                    label = "Start Food Delivery",
                    job = Config.Jobname
                },
            },
            distance = 1.5,
        })
    LocalNPCs[index].BeanMachineDeliveryPed = BeanMachineDeliveryPed
end

local function DestroyLocalNPC(index)
    if (LocalNPCs[index]) then
        DeleteEntity(LocalNPCs[index].BeanMachineDeliveryPed)
        LocalNPCs[index] = nil
    end
end

----- | CHECKS IF PLAYER IS CERTAIN DISTANCE FROM PED MODEL | -----
Citizen.CreateThread(function()
    while true do
        local wait = 1000
        local ped = PlayerPedId() 
        local pcoords = GetEntityCoords(ped)
        for i=1, 1 do 
            local cfg = Config.BeanMachineDeliveryPed[i]
            local coords = vector3(cfg.BeanMachineDeliveryPedLocation)
            local dist = #(pcoords - coords)
            local BeanMachineDeliveryPed = GetLocalNPC(i)
            if dist < cfg.BeanMachineDeliveryRenderDistance then 
                if (GetLocalNPC(i) == nill) then 
                  CreateLocalNPC(i)
                end 
            else 
                DestroyLocalNPC(i)
            end 
        end
      Wait(wait)
    end
end)

----- | CREATING ALERT MENU | -----
RegisterNetEvent('Xotiic-BeanMachine:client:DeliveryStartAlert', function()
    if inJob == false then
        local beanalert = lib.alertDialog({
            header = 'BeanMachine Delivery',
            content = 'Are you sure you would like to start a delivery?',
            centered = true,
            size = 'xs',
            cancel = true,
            labels = {
                cancel = 'No',
                confirm = 'Yes',
            },
        })
        if beanalert == 'confirm'  then
            TriggerEvent('Xotiic-BeanMachine:client:RecieveDelivery')
        elseif beanalert == 'cancel' then
            lib.notify({
                id = 'bean_machine',
                title = 'BeanMachine',
                description = 'You declined the delivery',
                showDuration = false,
                position = 'top',
                style = {
                    backgroundColor = '#141517',
                    color = '#F08080',
                    ['.description'] = {
                      color = '#909296'
                    }
                },
                icon = 'mug-hot',
                iconColor = '#ffffff'
            })
        end
    elseif inJob == true then
        lib.notify({
            id = 'bean_machine',
            title = 'BeanMachine',
            description = 'You already have a delivery started, Check your GPS',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'mug-hot',
            iconColor = '#ffffff'
        })
    end
end)

----- | CREATING THE DELIVERY LOGICS | -----

local function DeliveryAnim()
    if lib.progressCircle({
        duration = 3000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
            combat = true,
        },
        anim = {
            dict = 'anim@mp_fireworks',
            scenario = 'anim@mp_fireworks',
            clip = 'place_firework_4_cone',
        },
    })
    then -- if progressCircle is going then
        -- do this
    else
        lib.notify({
            id = 'bean_machine',
            title = 'BeanMachine',
            description = 'Canceled',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'mug-hot',
            iconColor = '#ffffff'
        })
    end
end

----- | RECIEVED THE DELIVERY | -----
RegisterNetEvent('Xotiic-BeanMachine:client:RecieveDelivery', function()
    local route = math.random(1, #Config.DeliveryLocations["deliveryroute"])
    local randomRoute = Config.DeliveryLocations["deliveryroute"][math.random(1, #Config.DeliveryLocations["deliveryroute"])].coords
    deliveryBlip = AddBlipForCoord(randomRoute.x, randomRoute.y, randomRoute.z)
    SetBlipDisplay(deliveryBlip, 4)
    SetBlipScale(deliveryBlip, 0.7)
    SetBlipSprite(deliveryBlip, 280)
    SetBlipColour(deliveryBlip, 6)
    SetBlipAsShortRange(deliveryBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Customer")
    EndTextCommandSetBlipName(deliveryBlip)
    SetBlipRoute(deliveryBlip, true)
    inJob = true
    TriggerServerEvent('Xotiic-BeanMachine:server:RecieveFood')
    lib.notify({
        id = 'bean_machine',
        title = 'BeanMachine',
        description = 'Delivery Started! Check your GPS for the marked location',
        showDuration = false,
        position = 'top',
        style = {
            backgroundColor = '#141517',
            color = '#F08080',
            ['.description'] = {
              color = '#909296'
            }
        },
        icon = 'mug-hot',
        iconColor = '#ffffff'
    })
    exports['qb-target']:AddCircleZone("BeanMachineDelivery", randomRoute, 1.0, {
        name = "BeanMachineDelivery",
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "Xotiic-BeanMachine:client:CompleteDelivery",
                icon = "fa-solid fa-bag-shopping",
                label = 'Deliver Food/Drink',
                job = Config.Jobname
            },
        },
        distance = 2.5
    })
    print(randomRoute)
end)

----- | COMPLETING DELIVERY | -----
RegisterNetEvent('Xotiic-BeanMachine:client:CompleteDelivery', function()
    DeliveryAnim()
    RemoveBlip(deliveryBlip)
    inJob = false
    exports['qb-target']:RemoveZone("BeanMachineDelivery")
    TriggerServerEvent('Xotiic-BeanMachine:server:FinishDelivery')
    TriggerServerEvent('Xotiic-BeanMachine:server:FinishDeliveryPay')
    lib.notify({
        id = 'bean_machine',
        title = 'BeanMachine',
        description = 'Customer has recieved there order!',
        showDuration = false,
        position = 'top',
        style = {
            backgroundColor = '#141517',
            color = '#F08080',
            ['.description'] = {
              color = '#909296'
            }
        },
        icon = 'mug-hot',
        iconColor = '#ffffff'
    })
end)