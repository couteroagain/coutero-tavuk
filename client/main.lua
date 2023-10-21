local QBCore = exports['qb-core']:GetCoreObject()

local function LoadDict(dict)
    RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
	  	Wait(10)
    end
end

local function processchicken()
    local count = 0
    if(count == 0) then
		local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
		LoadDict(dict)
		FreezeEntityPosition(GetPlayerPed(-1),true)
		TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
		local PedCoords = GetEntityCoords(GetPlayerPed(-1))
		FreezeEntityPosition(GetPlayerPed(-1),false)
		ClearPedTasks(PlayerPedId())
	
    	TriggerServerEvent("coutero:chickenprocessing")
    end
end

local function packedchicken()
    local count = 0

    if(count == 0) then
		SetEntityHeading(GetPlayerPed(-1), 40.0)
		local PedCoords = GetEntityCoords(GetPlayerPed(-1))
		local couteropaketlemeet = CreateObject(GetHashKey('prop_cs_steak'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
		AttachEntityToEntity(couteropaketlemeet, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 0x49D9), 0.15, 0.0, 0.01, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
		local couteropaketlemekutu = CreateObject(GetHashKey('prop_cs_clothes_box'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
		AttachEntityToEntity(couteropaketlemekutu, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005), 0.13, 0.0, -0.16, 250.0, -30.0, 0.0, false, false, false, false, 2, true)
		LoadDict("anim@heists@ornate_bank@grab_cash_heels")
		TaskPlayAnim(PlayerPedId(), "anim@heists@ornate_bank@grab_cash_heels", "grab", 8.0, -8.0, -1, 1, 0, false, false, false)
		Wait(6500)
		FreezeEntityPosition(GetPlayerPed(-1),false)
		DeleteEntity(couteropaketlemekutu)
		DeleteEntity(couteropaketlemeet)
		ClearPedTasks(PlayerPedId())
	
       TriggerServerEvent("coutero:chickenpacking")
	   QBCore.Functions.Notify(Config.Locales['packing_chicken'], "success")
	else
		QBCore.Functions.Notify(Config.Locales['not_have_cutchicken'], "error")
    end
end

exports['qb-target']:AddBoxZone("collectchic", CollectChicken.targetZone, 1.4, 1.4, {
	name="collectchic",
	heading = CollectChicken.heading,
	debugPoly = false,
	minZ = CollectChicken.minZ,
	maxZ = CollectChicken.maxZ,
	}, {
		options = {
			{
				event = "coutero-chickenjob:picking",
				label = "Kafesten tavuk yakala.",
			},
		},
	   distance = 1.5
  })


exports['qb-target']:AddBoxZone("processing", ProcessingChicken.targetZone, 1.4, 1.4, {
	name="processing",
	heading = ProcessingChicken.heading,
	debugPoly = false,
	minZ = ProcessingChicken.minZ,
	maxZ = ProcessingChicken.maxZ,
	}, {
		options = {
			{
				event = "coutero-chickenjob:proccessing",
				label = "Kesim tezgahını kullan.",
			},
		},
	   distance = 1.5
  })

exports['qb-target']:AddBoxZone("packing", PackingChicken.targetZone, 1.4, 1.4, {
	name="packing",
	heading = PackingChicken.heading,
	debugPoly = false,
	minZ = PackingChicken.minZ,
	maxZ = PackingChicken.maxZ,
	}, {
		options = {
			{
				event = "coutero-chickenjob:packing",
				icon = "fa-solid fa-splotch",
				label = "Paketleme tezgahını kullan. ",
			},
		},
	   distance = 1.5
  })

exports['qb-target']:AddBoxZone("sell", SellChicken.targetZone, 1.4, 1.4, {
	name="sell",
	heading = SellChicken.heading,
	debugPoly = false,
	minZ = SellChicken.minZ,
	maxZ = SellChicken.maxZ,
	}, {
		options = {
			{
				type = "server",
				event = "coutero:sellItems",
				icon = "fa-solid fa-splotch",
				label = "Üzerinde bulunan paketlenmiş tavukları sat.",
			},
		},
	   distance = 1.5
  })
RegisterNetEvent('coutero-chickenjob:picking', function()
	QBCore.Functions.Progressbar('collect_chicken', Config.Locales['collect_chicken'], math.random(11000, 15000), false, true, {
	  disableMovement = true,
	  disableCarMovement = true,
	  disableMouse = false,
	  disableCombat = true,
	  }, {
	  animDict = 'mini@repair',
	  anim = 'fixing_a_player',
	  flags = 16,
	  }, {}, {}, function()
		  TriggerServerEvent('coutero:chickenpicking')
	  end, function()
	  QBCore.Functions.Notify(Config.Locales['cancel'], "error")
	end)
  end)

RegisterNetEvent('coutero-chickenjob:proccessing', function()
	local hasItem = QBCore.Functions.HasItem('alivechicken', Config.CutChicken)
	if hasItem then
		QBCore.Functions.Progressbar('chicken_processing', Config.Locales['chicken_processing'], math.random(8500, 10000), false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				processchicken()
			end, function()
				QBCore.Functions.Notify(Config.Locales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(Config.Locales['not_have_chicken'], "error")
	end
end)

RegisterNetEvent('coutero-chickenjob:packing', function()
	local hasItem = QBCore.Functions.HasItem('slaughteredchicken', Config.slaughteredchicken)
	if hasItem then
		QBCore.Functions.Progressbar('chicken_packet', Config.Locales['chicken_packet'], math.random(11000, 15000), false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
			}, {
			animDict = 'mini@repair',
			anim = 'fixing_a_player',
			flags = 16,
			}, {}, {}, function()
				packedchicken()
			end, function()
				QBCore.Functions.Notify(Config.Locales['cancel'], "error")
		end)
	else
		QBCore.Functions.Notify(Config.Locales['not_have_cutchicken'], "error")
	end
end)

CreateThread(function()
	for _,v in pairs(Config.Peds) do
		RequestModel(v.model)
		while not HasModelLoaded(v.model) do Wait(1) end
		v.handle = CreatePed(4, v.model, v.coords.x, v.coords.y, v.coords.z-1.0, v.heading, false, false)
		SetPedFleeAttributes(v.handle, 0, 0)
		SetPedDropsWeaponsWhenDead(v.handle, false)
		SetPedDiesWhenInjured(v.handle, false)
		SetEntityInvincible(v.handle , true)
		FreezeEntityPosition(v.handle, true)
		SetBlockingOfNonTemporaryEvents(v.handle, true)
		if v.anim.type == 1 then
			TaskStartScenarioInPlace(v.handle, v.anim.name, 0, true)
		elseif v.anim.type == 2 then
			RequestAnimDict(v.anim.dict)
			TaskPlayAnim(v.handle, v.anim.dict, v.anim.name, 8.0, 1, -1, 49, 0, false, false, false)
		end
	end
end)

if Config.EnableBlips then
	CreateThread(function()
		for _,v in pairs(Config.Locations) do
			local blip = AddBlipForCoord(v.coord)
			SetBlipSprite(blip, v.sprite)
			SetBlipScale(blip, v.scale)
			SetBlipColour(blip, v.color)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.label)
			EndTextCommandSetBlipName(blip)
		end
	end)
end
