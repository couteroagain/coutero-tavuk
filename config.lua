Config = {}


Config.Fuel = 'cc-fuel'
Config.EnableBlips = true

Config.Sell = {
    ["slaughteredchicken"] = {
        ["price"] = math.random(50, 75)
    },
    ["packagedchicken"] = {
        ["price"] = math.random(30, 40)
    },
    ["alivechicken"] = {
        ["price"] = math.random(150, 200)
    },
}

Config.PickingMaxChicken = 5
Config.PickingMinChicken = 1
Config.CutChicken = 5
Config.PacketChicken = 1
Config.slaughteredchicken = 1


CollectChicken = {
    targetZone = vector3(-68.24, 6248.27, 31.09),
    targetHeading = 36.74,
    minZ = 30.05,
    maxZ = 32.00,
}

ProcessingChicken = {
    targetZone = vector3(-95.66, 6207.11, 31.03),
    targetHeading = 315.44,
    minZ = 30.05,
    maxZ = 32.00,
}

PackingChicken = {
    targetZone = vector3(-104.0, 6206.81, 31.03),
    targetHeading = 47.39,
    minZ = 30.05,
    maxZ = 32.00,
}

SellChicken = {
    targetZone = vector3(1677.47, 4882.56, 42.04),
    targetHeading = 61.58,
    minZ = 41.05,
    maxZ = 43.00,
}

Config.Locales = {
    ['collect_chicken'] = 'Kafes içerisinden tavuk yakalıyorsunuz.',
    ['chicken_processing'] = 'Elinizdeki tavukları kesiyorsunuz...',
    ['chicken_packet'] = 'Kesilmiş tavukları paketliyorsunuz...',
    ['sell_chicken'] = 'Üzerinizde bulunan paketlenmiş tavukları sattınız.',
    ['cancel'] = 'İşlem iptal edildi.',
    ['cut_chicken'] = 'Kesim Tezgahı',
    ['not_have_chicken'] = 'Kesim tezgahına yerleştirebileceğiniz bir tavuğunuz bulunmuyor.',
    ['not_have_cutchicken'] = 'Tezgaha yerleştirebileceğiniz kesilmiş tavuğunuz bulunmuyor.',
    ['packing_chicken'] = 'Tezgaha yerleştirdiğiniz tüm tavukları paketlediniz.',
}

Config.Locations = {
    [1] = {label = "Tavuk Fabrikası", coord = vector3(-71.39, 6264.21, 31.21), color = 5, sprite = 478, scale = 0.6},
    [2] = {label = "Tavuk Satış", coord = vector3(1677.47, 4882.56, 42.04), color = 2, sprite = 605, scale = 0.7},

}

Config.Peds = {
    [1] = { handle = nil, model ="a_m_m_fatlatin_01", coords = vector3(1677.47, 4882.56, 42.04), heading = 61.58,  anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- scene
}

	

