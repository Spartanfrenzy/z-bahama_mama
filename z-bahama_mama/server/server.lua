local QBCore = exports['qb-core']:GetCoreObject()

--Consumables
--Cocktails
QBCore.Functions.CreateUseableItem("b52", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("brussian", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("bkamikaze", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("cappucc", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("ccookie", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("iflag", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("kamikaze", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("sbullet", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("voodoo", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("woowoo", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("schnapps", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("gin", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("scotch", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("rum", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("icream", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("amaretto", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("curaco", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)
QBCore.Functions.CreateUseableItem("beerglass", function(source, item) TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name) end)

--NON Alcohilic Drinks
QBCore.Functions.CreateUseableItem("cranberry", function(source, item) if QBCore.Functions.GetPlayer(source).Functions.RemoveItem(item.name, 1, item.slot) then TriggerClientEvent("consumables:client:Drink", source, item.name) end end)

RegisterServerEvent('z-bahamama:GetDrink')
AddEventHandler('z-bahamama:GetDrink', function(ItemMake)
    local Player = QBCore.Functions.GetPlayer(source)
    --cocktails
    if ItemMake == "b52" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['coffee'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['icream'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['orange'], "remove", 1) 
		Player.Functions.RemoveItem('coffee', 1)
		Player.Functions.RemoveItem('icream', 1)
		Player.Functions.RemoveItem('orange', 1)
	elseif ItemMake == "brussian" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['coffee'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['vodka'], "remove", 1) 
		Player.Functions.RemoveItem('coffee', 1)
		Player.Functions.RemoveItem('vodka', 1)
	elseif ItemMake == "bkamikaze" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lime'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['vodka'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['curaco'], "remove", 1) 
		Player.Functions.RemoveItem('lime', 1)
		Player.Functions.RemoveItem('vodka', 1)
		Player.Functions.RemoveItem('curaco', 1)
	elseif ItemMake == "cappucc" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['coffee'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['chocolate'], "remove", 1) 
		Player.Functions.RemoveItem('coffee', 1)
		Player.Functions.RemoveItem('chocolate', 1)
	elseif ItemMake == "ccookie" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cranberry'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['amaretto'], "remove", 1) 
		Player.Functions.RemoveItem('cranberry', 1)
		Player.Functions.RemoveItem('amaretto', 1)
	elseif ItemMake == "iflag" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['icream'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['orange'], "remove", 1) 
		Player.Functions.RemoveItem('icream', 1)
		Player.Functions.RemoveItem('orange', 1)
	elseif ItemMake == "kamikaze" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['orange'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['vodka'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lime'], "remove", 1) 
		Player.Functions.RemoveItem('orange', 1)
		Player.Functions.RemoveItem('vodka', 1)
		Player.Functions.RemoveItem('lime', 1)
	elseif ItemMake == "sbullet" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['gin'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['scotch'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['lemon'], "remove", 1) 
		Player.Functions.RemoveItem('gin', 1)
		Player.Functions.RemoveItem('scotch', 1)
		Player.Functions.RemoveItem('lemon', 1)
	elseif ItemMake == "voodoo" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['coffee'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rum'], "remove", 1) 
		Player.Functions.RemoveItem('coffee', 1)
		Player.Functions.RemoveItem('rum', 1)
	elseif ItemMake == "woowoo" then
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cranberry'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['vodka'], "remove", 1) 
	    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['schnapps'], "remove", 1) 
		Player.Functions.RemoveItem('cranberry', 1)
		Player.Functions.RemoveItem('vodka', 1)
		Player.Functions.RemoveItem('schnapps', 1)
    end
    --This should remove the items
    Player.Functions.AddItem(ItemMake, 1)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[ItemMake], "add", 1) 
end)


--ITEM REQUIRMENT CHECKS
-- Cocktails
QBCore.Functions.CreateCallback('z-bahamamama:get:b52', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('coffee') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('icream') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('orange') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:brussian', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('coffee') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('vodka') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:bkamikaze', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('curaco') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('lime') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('vodka') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:cappucc', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('coffee') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('chocolate') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:ccookie', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('amaretto') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('cranberry') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:iflag', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('icream') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('orange') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:kamikaze', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('lime') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('orange') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('vodka') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:sbullet', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('gin') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('lime') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('scotch') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:voodoo', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('coffee') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('rum') ~= nil then cb(true) else cb(false) end end)
QBCore.Functions.CreateCallback('z-bahamamama:get:woowoo', function(source, cb) if QBCore.Functions.GetPlayer(source).Functions.GetItemByName('cranberry') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('schnapps') ~= nil and QBCore.Functions.GetPlayer(source).Functions.GetItemByName('vodka') ~= nil then cb(true) else cb(false) end end)


--Register
RegisterServerEvent('z-bahamamama:Tickets:Sell', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.GetItemByName("burger-ticket") ~= nil then
		local tickets = Player.Functions.GetItemByName("burger-ticket").amount
		local pay = (tickets * Config.PayPerTicket)
		Player.Functions.RemoveItem('burger-ticket', tickets)
		Player.Functions.AddMoney('bank', pay, 'bahamamama-payment')
		TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Share.Items['burger-ticket'], "remove", tickets)
		TriggerClientEvent('QBCore:Notify', src, "Tickets:"..tickets.."Total $"..pay, 'success')
	else
		TriggerClientEvent('QBCore:Notify', src, "No tickets to trade", 'error')
	end
end)

RegisterServerEvent("z-bahamamama:server:Charge", function(citizen, price)
	print("does this work?")
	local biller = QBCore.Functions.GetPlayer(source)
	local billed = QBCore.Functions.GetPlayer(tonumber(citizen))
	local amount = tonumber(price)
	if billed ~= nil then
		--if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
		if amount and amount > 0 then
			MySQL.Async.insert('INSERT INTO phone_invoices (citzenid, amount, society, sender, sendercitizenid) VALUES (?, ?, ?, ?, ?,)', {
				billed.PlayerData.citizenid,
				amount,
				biller.PlayerData.job.name,
				biller.PlayerData.charinfo.firtname,
				biller.PlayerData.citzenid
			})
			TriggerClientEvent('qb-phone-RefreshPhone', billed.PlayerData.source)
			TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
			TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')

		else TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error') end
	else TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error') end
end)
		