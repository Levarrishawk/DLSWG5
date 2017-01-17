robe_jedi_dark_s04 = {
 -- Gunman's Duster
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "",
    directObjectTemplate = "object/tangible/wearables/robe/robe_jedi_dark_s04.iff",
    craftingValues = {},
    skillMods = {
           {"saber_block", 35},
           {"jedi_toughness", 20},
           {"forcelightning_accuracy", 20},
           {"force_power_dark", 15}
        },
    junkDealerTypeNeeded = JUNKCLOTHESANDJEWELLERY,
    junkMinValue = 50,
    junkMaxValue = 100
}

addLootItemTemplate("robe_jedi_dark_s04", robe_jedi_dark_s04)