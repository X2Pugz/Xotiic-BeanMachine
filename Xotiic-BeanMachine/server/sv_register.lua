local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('Xotiic-BeanMachine:server:billPlayer', function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)

    if biller.PlayerData.job.name == Config.Jobname then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                    -- Remove Money
                    billed.Functions.RemoveMoney('bank', amount)
                    lib.notify(source, {
                        id = 'bean_machine',
                        title = 'BeanMachine',
                        description = 'You charged a customer',
                        showDuration = false,
                        position = 'top',
                        style = {
                            backgroundColor = '#141517',
                            color = '#F08080',
                            ['.description'] = {
                              color = '#909296'
                            }
                        },
                        icon = 'coffee-beans',
                        iconColor = '#F08080'
                    })
                    lib.notify(billed.PlayerData.source, {
                        id = 'bean_machine',
                        title = 'BeanMachine',
                        description = 'You have been charged $'..amount..' for your order.',
                        showDuration = false,
                        position = 'top',
                        style = {
                            backgroundColor = '#141517',
                            color = '#F08080',
                            ['.description'] = {
                              color = '#909296'
                            }
                        },
                        icon = 'coffee-beans',
                        iconColor = '#F08080'
                    })
                    exports['qb-banking']:AddMoney('beanmachine', amount, 'Sale')
                else
                    lib.notify(source, {
                        id = 'bean_machine',
                        title = 'BeanMachine',
                        description = 'Must be a valid amount above 0',
                        showDuration = false,
                        position = 'top',
                        style = {
                            backgroundColor = '#141517',
                            color = '#F08080',
                            ['.description'] = {
                              color = '#909296'
                            }
                        },
                        icon = 'coffee-beans',
                        iconColor = '#F08080'
                    })
                end
            else
                lib.notify(source, {
                    id = 'bean_machine',
                    title = 'BeanMachine',
                    description = 'You cannot bill yourself',
                    showDuration = false,
                    position = 'top',
                    style = {
                        backgroundColor = '#141517',
                        color = '#F08080',
                        ['.description'] = {
                          color = '#909296'
                        }
                    },
                    icon = 'coffee-beans',
                    iconColor = '#F08080'
                })
                
            end
        else
            lib.notify(source, {
                id = 'bean_machine',
                title = 'BeanMachine',
                description = 'Player not online',
                showDuration = false,
                position = 'top',
                style = {
                    backgroundColor = '#141517',
                    color = '#F08080',
                    ['.description'] = {
                      color = '#909296'
                    }
                },
                icon = 'coffee-beans',
                iconColor = '#F08080'
            })
        end
    end
end)