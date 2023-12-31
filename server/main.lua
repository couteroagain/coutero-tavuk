local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('coutero:chickenpicking')
AddEventHandler('coutero:chickenpicking', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("alivechicken", math.random(Config.PickingMinChicken,Config.PickingMaxChicken))
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["alivechicken"], 'add')
end)


RegisterServerEvent("coutero:chickenprocessing")
AddEventHandler("coutero:chickenprocessing", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem("alivechicken", Config.CutChicken) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["alivechicken"], 'remove')
			QBCore.Functions.Notify(Config.Locales['cut_chicken'], "success")
			if Player.Functions.AddItem("slaughteredchicken", Config.slaughteredchicken) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["slaughteredchicken"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, Config.Locales["itemerror"])
            end
        else
    end
end)

RegisterServerEvent("coutero:chickenpacking")
AddEventHandler("coutero:chickenpacking", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem("slaughteredchicken", Config.PacketChicken) then
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["slaughteredchicken"], 'remove')
			if Player.Functions.AddItem("packagedchicken", Config.PacketChicken) then
			    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["packagedchicken"], 'add')
            else
                TriggerClientEvent('QBCore:Notify', src, Config.Locales["itemerror"])
            end
        else
    end
end)

RegisterNetEvent('coutero:sellItems', function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.items and next(Player.PlayerData.items) then
        for k, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[k] then
                local itemname = Player.PlayerData.items[k].name
                local itemamount = Player.PlayerData.items[k].amount
                if Config.Sell[itemname] then
                    price = (Config.Sell[itemname].price * itemamount)
                    if Player.Functions.RemoveItem(itemname, itemamount, k) then
                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemname], "remove")
                    end
                end
            end
        end
        Player.Functions.AddMoney("cash", price)
		TriggerClientEvent('QBCore:Notify', src, Config.Locales["sell_chicken"])
	end
end)


