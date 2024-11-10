local QBCore = exports['qb-core']:GetCoreObject()

exports['qb-target']:AddBoxZone("BeanRegister", vector3(122.21, -1036.62, 29.44), 0.9, 0.9, {
    name = "BeanRegister",
    heading = 335.05,
    debugPoly = false,
    minZ = 14.0 - 2,
    maxZ = 14.0 + 2,
}, {
    options = {
        {
            type = "client",
            event = "Xotiic-BeanMachine:client:Bill",
            icon = "fa-solid fa-cash-register",
            label = "Register",
            job = Config.Jobname,
        },
    },
    distance = 2.5
})

exports['qb-target']:AddBoxZone("BeanRegister2", vector3(120.86, -1040.09, 29.46), 0.9, 0.9, {
    name = "BeanRegister2",
    heading = 335.05,
    debugPoly = false,
    minZ = 14.0 - 2,
    maxZ = 14.0 + 2,
}, {
    options = {
        {
            type = "client",
            event = "Xotiic-BeanMachine:client:Bill",
            icon = "fa-solid fa-cash-register",
            label = "Register",
            job = Config.Jobname,
        },
    },
    distance = 2.5
})

RegisterNetEvent("Xotiic-BeanMachine:client:Bill", function()
    local bill = lib.inputDialog('BeanMachine Register', {
        { type = 'input', label = 'Citizen ID', description = 'Players Citizen ID', icon = 'id-card'},
        { type = 'number', label = 'Bill Amount', description = 'How much to charge customer', icon = 'dollar-sign'}
    })
    if bill ~= nil then -- If the bill is NOT equal to nothing 
        if bill[1] == nil or bill[2] == nil then
            return
        end
        -- If the bill is NOT equal to nothing then do the below
        TriggerServerEvent('Xotiic-BeanMachine:server:billPlayer', bill[1], bill[2])
    end
end)

RegisterNetEvent("Xotiic-BeanMachine:client:BillAlert", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)

    local alert = lib.alertDialog(billed.PlayerData.source, {
        header = 'BeanMachine Bill',
        content = 'Would you like to Accept or Deny this purchase?',
        centered = true,
        cancel = true,
        labels = {
            confirm = 'Accept',
            cancel = 'Deny',
        },
    })
    if alert == 'confirm' then
        lib.notify(biller, {
            title = 'BeanMachine',
            description = 'You charged a customer.',
            type = 'success'
        })
        lib.notify(billed, {
            title = 'BeanMachine',
            description = 'You have been charged $'..amount..' fore your order.',
            type = 'success'
        })
    elseif alert == 'cancel' then
        lib.notify(biller, {
            title = 'BeanMachine',
            description = 'Customer has denied the bill.',
            type = 'warning'
        })
        lib.notify(billed, {
            title = 'BeanMachine',
            description = 'You have denied the bill from BeanMachine',
            type = 'success'
        })
    end
end)