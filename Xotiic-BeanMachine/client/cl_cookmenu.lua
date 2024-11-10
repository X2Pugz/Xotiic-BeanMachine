local QBCore = exports['qb-core']:GetCoreObject()

if Config.InventorySystem == 'ox' then
    ----- | CREATING Muffin MENU TARGET | -----
    exports.ox_target:addBoxZone({
		coords = vector4(122.73, -1044.02, 29.28, 202.7),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'bean:muffinmenu',
				event = 'Xotiic-BeanMachine:client:OpenFoodMenu',
				icon = 'fa-solid fa-cake-candles',
				label = 'Grab Muffins',
                groups = {
                    Config.Jobname
                },
			},
		}
	})
    ----- | CREATING Drinks MENU TARGET | -----
    exports.ox_target:addBoxZone({
		coords = vector3(122.64, -1041.73, 29.54),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'bean:drinksmenu2',
				event = 'Xotiic-BeanMachine:client:OpenDrinksMenu',
				icon = 'fa-solid fa-mug-hot',
				label = 'Grab Drinks',
                groups = {
                    Config.Jobname
                },
			},
		}
	})
elseif Config.InventorySystem == 'qb' then
    ----- | CREATING Muffin MENU TARGET | -----
    exports['qb-target']:AddBoxZone("BeanMuffinMenu", vector3(122.73, -1044.48, 29.55), 0.9, 0.9, {
        name = "BeanMuffinMenu",
        heading = 300.45,
        debugPoly = false,
        minZ = 14.0 - 2,
        maxZ = 14.0 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "Xotiic-BeanMachine:client:OpenFoodMenu",
                icon = "fa-solid fa-cake-candles",
                label = "Muffin Menu",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    ----- | CREATING Drinks MENU TARGET | -----
    exports['qb-target']:AddBoxZone("BeanDrinksMenu", vector3(122.72, -1041.65, 29.63), 0.9, 0.9, {
        name = "BeanDrinksMenu",
        heading = 300.45,
        debugPoly = false,
        minZ = 14.0 - 2,
        maxZ = 14.0 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "Xotiic-BeanMachine:client:OpenDrinksMenu",
                icon = "fa-solid fa-cup-straw",
                label = "Drinks Menu",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
end
lib.registerContext({
    id = 'bean_cookmenu',
    title = 'Muffin Menu',
    options = {
        {
            title = 'Food',
            description = 'All our Food',
            menu = 'bean_cookmenu',
        },
        {
            title = 'Drinks',
            description = 'All our Drinks',
            menu = 'bean_drinksmenu',
        },
    },
})
RegisterNetEvent('Xotiic-BeanMachine:client:OpenFoodMenu', function()
    lib.showContext('bean_cookmenu')
end)
lib.registerContext({
    id = 'bean_cookmenu',
    title = 'Muffin Menu',
    menu = 'bean_cookmenu',
    options = {
        {
            title = 'Muffin',
            description = 'Make 2x Muffins',
            event = 'Xotiic-BeanMachine:client:MakeMuffin',
            icon = 'cake-candles',
            iconColor = '#ffffff'
        },
        {
            title = 'Chocolate Muffin',
            description = 'Make 2x Chocolate Muffins',
            event = 'Xotiic-BeanMachine:client:MakeChocolateMuffin',
            icon = 'cake-candles',
            iconColor = '#ffffff'
        },
        {
            title = 'Berry Muffin',
            description = 'Make 2x Chocolate Muffins',
            event = 'Xotiic-BeanMachine:client:MakeBerryMuffin',
            icon = 'cake-candles',
            iconColor = '#ffffff'
        },
        {
            title = 'Donut',
            description = 'Make 2x Donuts',
            event = 'Xotiic-BeanMachine:client:MakeDonut',
            icon = 'cake-candles',
            iconColor = '#ffffff'
        },
        {
            title = 'Banana',
            description = 'Make 2x Bananas',
            event = 'Xotiic-BeanMachine:client:MakeBanana',
            icon = 'cake-candles',
            iconColor = '#ffffff'
        },
        {
            title = 'Orange',
            description = 'Make 2x Oranges',
            event = 'Xotiic-BeanMachine:client:MakeOrange',
            icon = 'cake-candles',
            iconColor = '#ffffff'
        },
        {
            title = 'Apple',
            description = 'Make 2x Apples',
            event = 'Xotiic-BeanMachine:client:MakeApple',
            icon = 'cake-candles',
            iconColor = '#ffffff'
        },
    },
})
lib.registerContext({
    id = 'bean_drinksmenu',
    title = 'Drinks',
    menu = 'bean_drinksmenu',
    options = {
        {
            title = 'Sprite',
            description = 'Make 2x Sprites',
            event = 'Xotiic-BeanMachine:client:MakeSprite',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'CocaCola',
            description = 'Make 2x CocaColas',
            event = 'Xotiic-BeanMachine:client:MakeCocaCola',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'DR.Pepper',
            description = 'Make 2x DR.Peppers',
            event = 'Xotiic-BeanMachine:client:MakeDrPepper',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Lemon Slush',
            description = 'Make 2x Lemon Slushs',
            event = 'Xotiic-BeanMachine:client:MakeLemonSlush',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Orange Slush',
            description = 'Make 2x Orange Slushs',
            event = 'Xotiic-BeanMachine:client:MakeOrangeSlush',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Cloud Cafe',
            description = 'Make 2x Cloud Cafe',
            event = 'Xotiic-BeanMachine:client:MakeCloudCafe',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Java Chip Frappuccino',
            description = 'Make 2x Java Chip Frappuccino',
            event = 'Xotiic-BeanMachine:client:MakeJavaChipFrappuccino',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Honey Hazelnut Oat Latte',
            description = 'Make 2x Honey Hazelnut Oat Latte',
            event = 'Xotiic-BeanMachine:client:MakeHoneyHazelnutOatLatte',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Strawberry Cream Frappuccino',
            description = 'Make 2x Strawberry Cream Frappuccino',
            event = 'Xotiic-BeanMachine:client:MakeStrawberryCreamFrappuccino',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Iced Caffe Latte',
            description = 'Make 2x Iced Caffe Latte',
            event = 'Xotiic-BeanMachine:client:MakeIcedCaffeLatte',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Espresso',
            description = 'Make 2x Espresso',
            event = 'Xotiic-BeanMachine:client:MakeEspresso',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Espresso Macchiato',
            description = 'Make 2x Espresso Macchiato',
            event = 'Xotiic-BeanMachine:client:MakeEspressoMacchiato',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Caramel Frappucino',
            description = 'Make 2x Caramel Frappucino',
            event = 'Xotiic-BeanMachine:client:MakeCaramelFrappucino',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
        {
            title = 'Strawberry Vanilla Oat Latte',
            description = 'Make 2x Strawberry Vanilla Latte',
            event = 'Xotiic-BeanMachine:client:MakeStrawberryVanillaLatte',
            icon = 'mug-hot',
            iconColor = '#ffffff'
        },
    },
})
RegisterNetEvent('Xotiic-BeanMachine:client:OpenDrinksMenu', function()
    lib.showContext('bean_drinksmenu')
end)
-- Creating The Drinks
RegisterNetEvent('Xotiic-BeanMachine:client:MakeSprite', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeSprite')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeCaramelFrappucino', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeCaramelFrappucino')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeCocaCola', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeCocaCola')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeDrPepper', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeDrPepper')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeLemonSlush', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeLemonSlush')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeOrangeSlush', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeOrangeSlush')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeCloudCafe', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeCloudCafe')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeJavaChipFrappuccino', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeJavaChipFrappuccino')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeHoneyHazelnutOatLatte', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeHoneyHazelnutOatLatte')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeStrawberryCreamFrappuccino', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeStrawberryCreamFrappuccino')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeIcedCaffeLatte', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeIcedCaffeLatte')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeEspressoMacchiato', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeEspressoMacchiato')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeStrawberryVanillaLatte', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "drink", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeStrawberryVanillaLatte')
    else
    end
end)
-- Creating The Muffins
RegisterNetEvent('Xotiic-BeanMachine:client:MakeMuffin', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "muffin", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeMuffin')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeChocolateMuffin', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "muffin", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeChocolateMuffin')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeBerryMuffin', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "muffin", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeBerryMuffin')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeDonut', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "dount", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeDonut')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeOrange', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "orange", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeOrange')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeBanana', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "banana", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeBanana')
    else
    end
end)
RegisterNetEvent('Xotiic-BeanMachine:client:MakeApple', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "apple", 0.2)
    if lib.progressCircle({
        duration = 2000, -- Time To Craft 2 seconds 
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('Xotiic-BeanMachine:server:MakeApple')
    else
    end
end)