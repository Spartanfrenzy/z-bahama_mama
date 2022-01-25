local QBCore = exports['qb-core']:GetCoreObject()

PlayerJob = {}

local onDuty = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "bmama" then
                TriggerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty =  PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

RegisterNetEvent('z-bahama_mama:client:SetDuty', function()
	onDuty = not onDuty
	TriggerServerEvent('QBCore:ToggleDuty')
end)



--Targeting for Bahama Mama
CreateThread(function()
    print(Config.BahamaMamaDuty)
    exports['qb-target']:AddBoxZone("bahamamamaduty", Config.BahamaMamaDuty, 0.3, 0.5, {
        name="bahamamamaduty",
        heading=237,
        debugPoly= false,
        minZ=29.32,
        maxZ=31.32
        }, {
        options = {
            {
                event = "z-bahama_mama:client:SetDuty",
                icon = "fas fa-clock", 
                label = "Toggle Duty",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("frontreg1", vector3(-1385.76, -593.34, 30.32), 0.55, 0.3, {
        name="frontreg1",
        heading=3,
        debugPoly= false,
        minZ=30.32,
        maxZ=30.72
        }, {
        options = {
            {
                event = "z-bahama_mama:client:Charge",
                icon = "fas fa-cash-register", 
                label = "Cash Register",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("frontreg2", vector3(-1384.3, -590.52, 30.32), 0.45, 0.4, {
        name="frontreg2",
        heading=310,
        debugPoly= false,
        minZ=30.17,
        maxZ=30.62
        }, {
        options = {
            {
                event = "z-bahama_mama:client:Charge",
                icon = "fas fa-cash-register", 
                label = "Cash Register",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("barreg1", vector3(-1389.02, -605.58, 30.32), 0.4, 0.6, {
        name="barreg1",
        heading=15,
        debugPoly= false,
        minZ=30.32,
        maxZ=30.72
        }, {
        options = {
            {
                event = "z-bahama_mama:client:Charge",
                icon = "fas fa-cash-register", 
                label = "Cash Register",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("barreg2", vector3(-1394.77, -609.67, 30.32), 0.6, 0.4, {
        name="barreg2",
        heading=325,
        debugPoly= false,
        minZ=30.32,
        maxZ=30.72
        }, {
        options = {
            {
                event = "z-bahama_mama:client:Charge",
                icon = "fas fa-cash-register", 
                label = "Cash Register",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("barreg3", vector3(-1390.39, -614.87, 30.32), 0.4, 0.6, {
        name="barreg3",
        heading=10,
        debugPoly= false,
        minZ=30.32,
        maxZ=30.72
        }, {
        options = {
            {
                event = "z-bahama_mama:client:Charge",
                icon = "fas fa-cash-register", 
                label = "Cash Register",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("barreg4", vector3(-1385.65, -611.74, 30.32), 0.6, 0.4, {
        name="barreg4",
        heading=325,
        debugPoly= false,
        minZ=30.32,
        maxZ=30.72
        }, {
        options = {
            {
                event = "z-bahama_mama:client:Charge",
                icon = "fas fa-cash-register", 
                label = "Cash Register",
                job = "bmama",
            },
        },
        distance = 2.0
    })
end)

CreateThread(function()
    --Targeting for Coolers
    exports['qb-target']:AddBoxZone("Cooler1", vector3(-1389.44, -606.13, 30.32), 0.4, 0.6, { 
        name="Cooler1", 
        heading = 15, 
        debugPoly= Config.ShowPolys, 
        minZ =26.27, 
        maxZ =30.27, 
    }, { 
        options = { 
            {  
                type = "client",
                event = "z-bahamama:Stash1", 
                icon = "fas fa-cocktail", 
                label = "Cooler", 
                job = "bmama", 
            }, 
        },
		distance = 2.0
	})

    exports['qb-target']:AddBoxZone("Cooler2", vector3(-1394.09, -609.22, 30.32), 0.6, 0.4, {
        name="cooler2",
        heading =320,
        debugPoly = Config.ShowPolys,
        minZ =26.32,
        maxz =30.32,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamama:Stash2",
                icon = "fas fa-cocktail",
                label = "Cooler",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("Cooler3", vector3(-1390.48, -614.6, 30.32), 0.4, 036, {
        name = "cooler3",
        heading =195,
        debugPoly = Config.ShowPolys,
        minZ = 29.32,
        maxZ = 30.32,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamama:Stash3",
                icon = "fas fa-cocktail",
                label = "Cooler",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("Cooler4", vector3(-1386.33, -612.03, 30.32), 0.2, 0.65, {
        name = "cooler4",
        heading = 225,
        debugPoly = Config.ShowPolys,
        minZ = 29.27,
        maxZ = 30.27,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamama:Stash4",
                icon = "fas fa-cocktail",
                label = "Cooler",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("boss_stash", vector3(-1364.42, -616.24, 30.32), 0.9, 0.4, {
        name = "boss_stash",
        heading = 213,
        debugPoly = Config.ShowPolys,
        minZ =30.32, 
        maxZ =30.75,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamama_boss:Stash",
                icon = "fas fa-chess-pawn",
                label = "Boss Bar",
                job = "bmama"
            },
        },
        distance = 2.0
    })
    
    exports['qb-target']:AddBoxZone("bahamama_store", vector3(-1397.97, -627.81, 30.32), 2.4, 0.8, {
        name = "bahamama_store",
        heading =300,
        debugPoly = Config.ShowPolys,
        minZ =29.32,
        maxZ =31.72,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamamama:Shop",
                icon = "fas fa-box",
                label = "Store",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("BmamaCoffee", vector3(-1389.15, -611.78, 30.32), 1.0, 1.0, {
        name = "BmamaCoffee",
        heading = 300,
        debugPoly = Config.ShowPolys,
        minZ = 30.27,
        maxZ = 31.07,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamama:JustGive",
                icon = "fas fa-mug-hot",
                label = "Pour Coffee",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("BmamaCocktails", vector3(-1389.66, -612.11, 30.32), 0.2, 0.2, {
        name = "BmamaCocktails",
        heading = 25,
        debugPoly = Config.ShowPolys,
        minZ = 30.12,
        maxZ = 30.72,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamama:Menu:Cocktails",
                icon = "fas fa-cocktails",
                label = "Mix Cocktails",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("BmamaCoffee", vector3(-1390.82, -608.75, 30.32), 0.6, 1, {
        name = "BmamaCoffee",
        heading = 35,
        debugPoly = Config.ShowPolys,
        minZ = 30.32,
        maxZ = 30.92,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamama:JustGive",
                icon = "fas fa-mug-hot",
                label = "Pour Coffee",
                job = "bmama",
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("BmamaCocktails", vector3(-1390.22, -608.54, 30.32), 0.2, 0.2, {
        name = "BmamaCocktails",
        heading = 296,
        debugPoly = Config.ShowPolys,
        minZ = 30.32,
        maxZ = 30.72,
    },{
        options = {
            {
                type = "client",
                event = "z-bahamama:Menu:Cocktails",
                icon = "fas fa-cocktails",
                label = "Mix Cocktails",
                job = "bmama",
            },
        },
        distance = 2.0
    })

end)

RegisterNetEvent('z-bahama_mama:client:Charge', function()
	if not onDuty then 
        TriggerEvent("QBCore:Notify", "Not Clocked in!", "error") 
        return false
    end
    local dialog = exports['qb-input']:ShowInput({
        header = "Charge Customer",
        submitText = "Charge",
        inputs = {
            { type = 'number', isRequired = true, name = 'citizen', text = 'Citizen\'s ID' },
            { type = 'number', isRequired = true, name = 'price', text = 'Amount to Charge' },
        }
    })
    if dialog then
        if not dialog.citizen or not dialog.price then return end
        TriggerServerEvent('z-bahama_mama:client:Charge', dialog.citizen, dialog.price)
    end
end)
-- stash for coolers
RegisterNetEvent("z-bahamama:Stash1", function(data)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "cooler-1", {
        maxweight = 400000000,
        slots = 40,
    })
    TriggerEvent("inventory:client:SetCurrentStash", "cooler-1")
end)

RegisterNetEvent("z-bahamama:Stash2", function(data)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "cooler-2", {
        maxweight = 400000000,
        slots = 40,
    })
    TriggerEvent("inventory:client:SetCurrentStash", "cooler-2")
end)

RegisterNetEvent("z-bahamama:Stash3", function(data)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "cooler-3", {
        maxweight = 400000000,
        slots = 40,
    })
    TriggerEvent("inventory:client:SetCurrentStash", "cooler-3")
end)

RegisterNetEvent("z-bahamama:Stash4", function(data)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "cooler-4", {
        maxweight = 400000000,
        slots = 40,
    })
    TriggerEvent("inventory:client:SetCurrentStash", "cooler-4")
end)

RegisterNetEvent("z-bahamama_boss:Stash", function(data)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Boss Stash", "YERR", {
        maxweight = 1000,
        slots = 40,
    })
    TriggerEvent("inventory:client:SetCurrentStash", "YERR")
end)

RegisterNetEvent('z-bahamamama:Shop', function(data)
    if not onDuty then TriggerEvent('QBCore:Notify', "NOT ON THE CLOCK!", 'error') return end
     TriggerServerEvent("inventory:server:OpenInventory", "shop", "bahamama", Config.DrinkItems)
end)

    -- IF YOU WANT A MENU (un-comment)
-- -- Bahama Mama duty menu
-- RegisterNetEvent('z-bahama_mama:client:BahamaMamaMenu', function(data)
--     exports['qb-menu']:openMenu({
--         { 
--             header = "On/Off Duty",
--             isMenuHeader = true
--         },
--         { 
--             header = "• Clock In/Out",
--             txt = "Don't forget to clock in and out!",
--             params = {
--             event = "z-bahama_mama:client:SetDuty",
--             }
--         },
--         {
--             header = "< Exit",
--             txt = "", 
--             params = { 
--                 event = "qb-menu:client:closeMenu"
--             }
--         },
--     })
-- end)

--- iTEM MAKING
function coffeeProgress(ItemMake)
	if ItemMake == "b52" or ItemMake == "brussian" or ItemMake == "bkamikaze" or ItemMake == "cappucc" or ItemMake == "ccookie" or ItemMake == "iflag" or ItemMake == "kamikaze" or ItemMake == "sbullet" or ItemMake == "voodoo" or ItemMake == "woowoo" then
		bartext = "Mixing a "..QBCore.Shared.Items[ItemMake].label
		bartime = 7000
		animDictNow = "anim@heists@prison_heiststation@cop_reactions"
		animNow = "cop_b_idle"
	elseif ItemMake == "coffee" or ItemMake == "beerglass" then
		bartext = "Pouring "..QBCore.Shared.Items[ItemMake].label
		bartime = 3000
		animDictNow = "mp_ped_interaction"
		animNow = "handshake_guy_a"
	end
	QBCore.Functions.Progressbar('making_food', bartext, bartime, false, false, {
		disableMovement = true, --
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
	}, {
		animDict = animDictNow,
		anim = animNow,
		flags = 8,
	}, {}, {}, function()  
		TriggerServerEvent('z-bahamama:GetDrink', ItemMake)
		StopAnimTask(GetPlayerPed(-1), animDictNow, animNow, 1.0)
	end, function() -- Cancel
		TriggerEvent('inventory:client:busy:status', false)
		TriggerEvent('QBCore:Notify', "Cancelled!", 'error')
	end)
end
 
RegisterNetEvent('z-bahamama:JustGive', function() if not onDuty then TriggerEvent('QBCore:Notify', "Not clocked in!", 'error') else coffeeProgress('coffee') end end)

RegisterNetEvent('z-bahamama:MakeItem', function(Drink) if not onDuty then TriggerEvent('QBCore:Notify', "Not clocked in!", 'error') else coffeeProgress(Drink.item) end end)

RegisterNetEvent('z-bahamama:Menu:Cocktails', function()
    exports['qb-menu']:openMenu({
		{ header = "Cocktail Menu", isMenuHeader = true },
        { header = "B-52", txt = "Coffee - Irish Cream - Orange", params = { event = "z-bahamama:MakeItem", args = { item = 'b52' } } },
        { header = "Black Russian", txt = "Coffee - Vodka", params = { event = "z-bahamama:MakeItem", args = { item = 'brussian' } } },
        { header = "Blue Kamikaze", txt = "Curaco - Lime - Vodka", params = { event = "z-bahamama:MakeItem", args = { item = 'bkamikaze' } } },
        { header = "Cappuccinotini", txt = "Coffee - Chocolate", params = { event = "z-bahamama:MakeItem", args = { item = 'cappucc' } } },
        { header = "Cranberry Cookie", txt = "Amaretto - Cranberry Juice", params = { event = "z-bahamama:MakeItem", args = { item = 'ccookie' } } },
        { header = "Irish Flag", txt = "Irish Cream - Orange", params = { event = "z-bahamama:MakeItem", args = { item = 'iflag' } } },
        { header = "Kamikaze", txt = "Lime - Orange - Vodka", params = { event = "z-bahamama:MakeItem", args = { item = 'kamikaze' } } },
        { header = "Silver Bullet", txt = "Gin - Lime - Scotch", params = { event = "z-bahamama:MakeItem", args = { item = 'sbullet' } } },
        { header = "Voodoo", txt = "Coffee - Rum", params = { event = "z-bahamama:MakeItem", args = { item = 'voodoo' } } },
        { header = "Woo Woo", txt = "Cranberry Juice - Peach Schnapps - Vodka", params = { event = "z-bahamama:MakeItem", args = { item = 'woowoo' } } },
    })
end)







