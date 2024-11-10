local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory
PlayerJob = {}

if Config.InventorySystem == 'ox' then

	exports.ox_target:addBoxZone({
		coords = vector3(121.9, -1037.03, 29.25),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'beanmachine_tray1',
				event = 'Xotiic-BeanMachine:client:beanTray1',
				icon = 'fa-solid fa-equals',
				label = 'Tray',
			},
		}
	})
	RegisterNetEvent('Xotiic-BeanMachine:client:beanTray1', function()
		if ox_inventory:openInventory('stash', 'beanTray1') == false then
			TriggerServerEvent('ox:beanTray1')
			ox_inventory:openInventory('stash', 'beanTray1')
		end
	end)

    exports.ox_target:addBoxZone({
		coords = vector3(120.61, -1040.61, 29.25),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'beanmachine_tray1',
				event = 'Xotiic-BeanMachine:client:beanTray2',
				icon = 'fa-solid fa-equals',
				label = 'Tray',
			},
		}
	})
	RegisterNetEvent('Xotiic-BeanMachine:client:beanTray2', function()
		if ox_inventory:openInventory('stash', 'beanTray2') == false then
			TriggerServerEvent('ox:beanTray2')
			ox_inventory:openInventory('stash', 'beanTray2')
		end
	end)

    exports.ox_target:addBoxZone({
		coords = vector3(120.07, -1043.62, 29.3),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'bean_staffstash',
				event = 'Xotiic-BeanMachine:client:beanstash',
				icon = 'fa-solid fa-box',
				label = 'Open Stash',
				groups = {
					beanmachine = 0
				},
			},
		}
	})
    RegisterNetEvent('Xotiic-BeanMachine:client:beanstash', function()
		if ox_inventory:openInventory('stash', 'beanstash') == false then
			TriggerServerEvent('ox:beanstash')
			ox_inventory:openInventory('stash', 'beanstash')
		end
	end)
elseif Config.InventorySystem == 'qb' then

	exports['qb-target']:AddBoxZone("beanmachine_tray1", vector3(121.9, -1037.03, 29.25), 0.9, 0.9, {
		name = "beanmachine_tray1",
		heading = 347.27,
		debugPoly = false,
		minZ = 14.0 - 2,
		maxZ = 14.0 + 2,
	}, {
		options = {
			{
				type = "client",
				event = "Xotiic-BeanMachine:client:beanTray1",
				icon = "fa-solid fa-equals",
				label = "Tray",
			},
		},
		distance = 2.5
	})
	RegisterNetEvent("Xotiic-BeanMachine:client:beanTray1", function()
		TriggerServerEvent('Xotiic-BeanMachine:server:beanTray1')
	end)

    exports['qb-target']:AddBoxZone("beanmachine_tray2", vector3(120.58, -1040.82, 29.25), 0.9, 0.9, {
		name = "beanmachine_tray2",
		heading = 347.27,
		debugPoly = false,
		minZ = 14.0 - 2,
		maxZ = 14.0 + 2,
	}, {
		options = {
			{
				type = "client",
				event = "Xotiic-BeanMachine:client:beanTray2",
				icon = "fa-solid fa-equals",
				label = "Tray",
			},
		},
		distance = 2.5
	})
	RegisterNetEvent("Xotiic-BeanMachine:client:beanTray2", function()
		TriggerServerEvent('Xotiic-BeanMachine:server:beanTray2')
	end)
end