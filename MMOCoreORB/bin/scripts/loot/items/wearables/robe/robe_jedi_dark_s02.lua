robe_jedi_dark_s02 = {
 -- Gunman's Duster
    minimumLevel = 0,
    maximumLevel = -1,
    customObjectName = "",
    directObjectTemplate = "object/tangible/wearables/robe/robe_jedi_dark_s02.iff",
    craftingValues = {},
    skillMods = {
           {"saber_block", 35},
           {"jedi_toughness", 20}         
        },
    junkDealerTypeNeeded = JUNKCLOTHESANDJEWELLERY,
    junkMinValue = 50,
    junkMaxValue = 100
}

addLootItemTemplate("robe_jedi_dark_s02", robe_jedi_dark_s02)