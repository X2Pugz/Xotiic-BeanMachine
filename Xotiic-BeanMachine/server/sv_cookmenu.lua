local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    -- MAKE MUFFIN --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeMuffin', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bmuffin', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Muffins',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    -- MAKE ChocolateMuffin --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeChocolateMuffin', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bchocolatemuffin', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Chocolate Muffins',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    -- MAKE Berry Muffins --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeBerryMuffin', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bberrymuffin', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Berry Muffins',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    -- MAKE Dounts --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeDonut', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bdonut', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Dounts',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    -- MAKE orange --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeOrange', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'borange', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Oranges',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
     -- MAKE banana --
     RegisterNetEvent('Xotiic-BeanMachine:server:MakeBanana', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bbanana', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Bananas',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    -- MAKE apple --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeApple', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bapple', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Apples',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    -- Make Sprite --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeSprite', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bsprite', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Sprites',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw-swoosh',
            iconColor = '#ffffff'
        })
    end)
    -- Make Cola --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeCocaCola', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bcocacola', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Colas',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw-swoosh',
            iconColor = '#ffffff'
        })
    end)
     -- Make DrPepper --
     RegisterNetEvent('Xotiic-BeanMachine:server:MakeDrPepper', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bpepper', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Dr Peppers',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw-swoosh',
            iconColor = '#ffffff'
        })
    end)
    -- Make Lemon Slush --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeLemonSlush', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'blemonslush', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Lemon Slush',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw-swoosh',
            iconColor = '#ffffff'
        })
    end)
    -- Make Orange Slush --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeOrangeSlush', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'borangeslush', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Orange Slush',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw-swoosh',
            iconColor = '#ffffff'
        })
    end)
    -- Make Cloud Cafe --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeCloudCafe', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bcloudcafe', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Cloud Cafe',
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
    -- Make Java Chip --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeJavaChipFrappuccino', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bjavachipfrappuccino', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x JavaChip Frappuccino',
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
     -- Make HoneyHazle Nut --
     RegisterNetEvent('Xotiic-BeanMachine:server:MakeHoneyHazelnutOatLatte', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bhoneyhazelnutoatlatte', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x HoneyHazleNut Latte',
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
    -- Make Starwberry Frap --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeStrawberryCreamFrappuccino', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bstrawberrycreamfrappuccino', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x StrawBerryCream Frappuccino',
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
    -- Make Iced Latte --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeIcedCaffeLatte', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bicedcaffelatte', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Iced Cafe Latte',
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
    -- MakeCaramelFrappucino --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeCaramelFrappucino', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bcaramelfrappucino', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Caramel Frap',
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
    -- Make Espresso Macchiatio --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeEspressoMacchiato', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bespressomacchiato', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Espresso Macchiato',
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
    -- Make StrawberryVanillaLate--
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeStrawberryVanillaLatte', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        ox_inventory:AddItem(src, 'bstrawberryvanillaoatlatte', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Strawberry Vinlla Latte',
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
elseif Config.InventorySystem == 'qb' then
    -- Make Muffin --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeMuffin', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bmuffin', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bmuffin'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Muffins',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    --MakeChocolateMuffin --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeChocolateMuffin', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bchocolatemuffin', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bchocolatemuffin'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Choc Muffins',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    --MakeBerryMuffin --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeBerryMuffin', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bberrymuffin', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bberrymuffin'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Choc Muffins',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    --MakeDonut --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeDonut', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bdonut', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bdonut'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Dounts',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    --MakeOrange --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeOrange', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'borange', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['borange'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Apples',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    --MakeBanana --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeBanana', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bbanana', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bbanana'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Bananas',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    --MakeApple --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeApple', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bapple', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bapple'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Bananas',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cake-candles',
            iconColor = '#ffffff'
        })
    end)
    --MakeSprite --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeSprite', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bsprite', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bsprite'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Sprites',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeCocaCola --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeCocaCola', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bcocacola', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bcocacola'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Colas',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeCocaCola --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeCaramelFrappucino', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bcaramelfrappucino', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bcaramelfrappucino'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Caramel Frap',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeDrPepper --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeDrPepper', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bpepper', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bpepper'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Dr Peppers',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeLemonSlush --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeLemonSlush', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'blemonslush', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['blemonslush'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Lemon Slush',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeOrangeSlush --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeOrangeSlush', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'borangeslush', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['borangeslush'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Orange Slush',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeCloudCafe --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeCloudCafe', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bcloudcafe', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bcloudcafe'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Cloud Cafe',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeJavaChipFrappuccino --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeJavaChipFrappuccino', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bjavachipfrappuccino', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bjavachipfrappuccino'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x JavaChip Frap',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeHoneyHazelnutOatLatte --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeHoneyHazelnutOatLatte', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bhoneyhazelnutoatlatte', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bhoneyhazelnutoatlatte'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x JavaChip Frap',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeStrawberryCreamFrappuccino --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeStrawberryCreamFrappuccino', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bstrawberrycreamfrappuccino', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bstrawberrycreamfrappuccino'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x StrawberryCream Frap',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeIcedCaffeLatte --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeIcedCaffeLatte', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bicedcaffelatte', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bicedcaffelatte'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x StrawberryCream Frap',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeEspressoMacchiato --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeEspressoMacchiato', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bespressomacchiato', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bespressomacchiato'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x StrawberryCream Frap',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
    --MakeStrawberryVanillaLatte --
    RegisterNetEvent('Xotiic-BeanMachine:server:MakeStrawberryVanillaLatte', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        exports['qb-inventory']:AddItem(src, 'bstrawberryvanillaoatlatte', 2, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['bstrawberryvanillaoatlatte'], 'add', 2)
        lib.notify(source, {
            id = 'bean',
            title = 'BeanMachine',
            description = 'You have Made 2x Strawbery latte',
            showDuration = false,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#F08080',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'cup-straw',
            iconColor = '#ffffff'
        })
    end)
end