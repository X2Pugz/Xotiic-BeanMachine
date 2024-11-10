local QBCore = exports['qb-core']:GetCoreObject()

if Config.InventorySystem == 'ox' then
    ----- | CREATING ClockInTARGET | -----
    exports.ox_target:addBoxZone({
		coords = vector3(126.99, -1035.63, 29.78),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'beanmachine_duty',
				event = 'Xotiic-BeanMachine:client:ToggleDuty',
				icon = 'fa-solid fa-clipboard-user',
				label = 'Clock In/Out',
                groups = {
                    Config.Jobname
                },
			},
            {
				name = 'beanmachine_clothing',
				event = 'qb-clothing:client:openOutfitMenu',-- if using illenium-appearance change the event to,   illenium-appearance:client:openOutfitMenu 
				icon = 'fa-solid fa-shirt',
				label = 'Change Clothing',
                groups = {
                    Config.Jobname
                },
			},
            {
				name = 'beanmachine_bossmenu',
				event = 'qb-bossmenu:client:OpenMenu',
				icon = 'fa-solid fa-briefcase',
				label = 'Business Menu',
                groups = {
                    Config.Jobname
                },
			},
		}
	})
    RegisterNetEvent('Xotiic-BeanMachine:client:ToggleDuty', function()
        TriggerServerEvent("QBCore:ToggleDuty")
    end)
elseif Config.InventorySystem == 'qb' then
    ---- | SETTING THE CLOCK IN/OUT TARGET | -----
    exports['qb-target']:AddBoxZone("BeanMachineClockInOut", vector3(126.97, -1035.7, 29.94), 1.9, 1.9, {
        name = "BeanMachineClockInOut",
        heading = 122.6,
        debugPoly = false,
        minZ = 15.16 - 2,
        maxZ = 15.16 + 2,
    },{
        options = {
            {
                type = "client",
                event = "Xotiic-BeanMachine:client:ToggleDuty",
                icon = "fa-solid fa-clipboard-user",
                label = 'Clock In/Out',
                job = Config.Jobname
            },
            {
                type = "client",
                event = "qb-clothing:client:openOutfitMenu",
                icon = "fa-solid fa-shirt",
                label = 'Change Clothing',
                job = Config.Jobname
            },
            {
                type = "client",
                event = "qb-bossmenu:client:OpenMenu",
                icon = "fa-solid fa-briefcase",
                label = 'Business Menu',
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    RegisterNetEvent('Xotiic-BeanMachine:client:ToggleDuty', function()
        TriggerServerEvent("QBCore:ToggleDuty")
    end)
end