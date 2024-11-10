local QBCore = exports['qb-core']:GetCoreObject()
Playerjob = {}


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
    local cfg = Config.BeanMachineGaragePed[index]

    FetchModel(cfg.BeanMachinePedModel)

    ----- | CREATING PED | -----
    local BeanMachineGaragePed = CreatePed(1, cfg.BeanMachinePedModel, cfg.BeanMachinePedLocation, false, true)
    FreezeEntityPosition(BeanMachineGaragePed, true)
    SetEntityInvincible(BeanMachineGaragePed, true)
    SetBlockingOfNonTemporaryEvents(BeanMachineGaragePed, true)
    local Player = QBCore.Functions.GetPlayerData()
    local jobRank = Player.job.grade.level
    local jobName = Config.Jobname
    local playerGrade = QBCore.Functions.GetPlayerData().job.grade.level
    ----- | CREATING TARGET FOR PED | -----
    if Config.InventorySystem == 'ox' then

        exports['qb-target']:AddTargetEntity(BeanMachineGaragePed, {
            options = {
                {
                    type = "client",
                    event = "Xotiic-BeanMachine:client:garageMenu", -- has bike and van
                    icon = "fa-solid fa-warehouse",
                    label = "Garage",
                    job = Config.Jobname
                },
                {
                    type = "client",
                    event = "Xotiic-BeanMachine:client:storeGarage",
                    icon = "fa-solid fa-square-parking",
                    label = "Store Vehicle",
                    job = Config.Jobname
                },
            },
            distance = 1.5,
        })
    end
    LocalNPCs[index].BeanMachineGaragePed = BeanMachineGaragePed
end

local function DestroyLocalNPC(index)
    if (LocalNPCs[index]) then
        DeleteEntity(LocalNPCs[index].BeanMachineGaragePed)
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
            local cfg = Config.BeanMachineGaragePed[i]
            local coords = vector3(cfg.BeanMachinePedLocation)
            local dist = #(pcoords - coords)
            local BeanMachineGaragePed = GetLocalNPC(i)
            if dist < cfg.BeanMachineGarageRenderDistance then 
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

CreateThread(function()
    DecorRegister("t_vehicle", 1)
end)