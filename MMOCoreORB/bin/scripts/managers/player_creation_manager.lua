--Should all created players start with God Mode? 1 = yes, 0 = no
freeGodMode = 0;
--How many cash credits new characters start with after creating a character (changed during test phase, normal value is 100)
startingCash = 100
--startingCash = 100000
--How many bank credits new characters start with after creating a character (changed during test phase, normal value is 1000)
startingBank = 1000
--startingBank = 100000
--How many skill points a new characters start with
skillPoints = 250

--[[professions = {
	"combat_brawler",
	"combat_marksman",
	"crafting_artisan",
	"jedi",
	"outdoors_scout",
	"science_medic",
	"social_entertainer"
}--]]

professions = {
  "combat_jedi",
  "combat_officer",
  "combat_mando",
  "combat_assassin",
  "combat_medic",
  "combat_soldier",
  "combat_shocktrooper",
  "trader_structures",
  "trader_engineering",
  "trader_munitions",
  "trader_pharmacist",
  "trader_domestics"
}

marksmanPistol = "object/weapon/ranged/pistol/pistol_cdef.iff"
	
marksmanRifle = "object/weapon/ranged/rifle/rifle_cdef.iff"

marksmanCarbine = "object/weapon/ranged/carbine/carbine_cdef.iff"

brawlerOneHander = "object/weapon/melee/knife/knife_stone.iff"

brawlerTwoHander = "object/weapon/melee/axe/axe_heavy_duty.iff"

brawlerPolearm = "object/weapon/melee/polearm/lance_staff_wood_s1.iff"

survivalKnife = "object/weapon/melee/knife/knife_survival.iff"

genericTool = "object/tangible/crafting/station/generic_tool.iff"

foodTool = "object/tangible/crafting/station/food_tool.iff"

mineralTool = "object/tangible/survey_tool/survey_tool_mineral.iff"

chemicalTool = "object/tangible/survey_tool/survey_tool_liquid.iff"

slitherhorn = "object/tangible/instrument/slitherhorn.iff"

marojMelon = "object/tangible/food/foraged/foraged_fruit_s1.iff"

x31Speeder = "object/tangible/deed/vehicle_deed/landspeeder_x31_deed.iff"

robe = "object/tangible/wearables/robe/robe_jedi_padawan.iff"

saber = "object/weapon/melee/sword/crafted_saber/sword_lightsaber_s9_training.iff"

jediTool = "object/tangible/crafting/station/jedi_tool.iff"

jediCrystal = "object/tangible/component/weapon/lightsaber/lightsaber_module_force_crystal.iff"

gasTool = "object/tangible/survey_tool/survey_tool_gas.iff"


professionSpecificItems = { 
  combat_soldier = { marksmanPistol, marksmanCarbine, marksmanRifle },
  combat_mando = { marksmanPistol, marksmanCarbine, marksmanRifle },
  combat_assassin = { marksmanPistol, marksmanCarbine, marksmanRifle },
  combat_shocktrooper = { marksmanPistol, marksmanCarbine, marksmanRifle },
  combat_jedi = { genericTool, mineralTool, chemicalTool, gasTool, jediTool, jediCrystal },
  combat_officer = { genericTool, marksmanPistol, marksmanCarbine, marksmanRifle  },
  combat_medic = { foodTool, marksmanPistol, brawlerPolearm },
  trader_structures = { genericTool, mineralTool, chemicalTool, gasTool },
  trader_munitions = { genericTool, mineralTool, chemicalTool, gasTool}, 
  trader_engineering = { genericTool, mineralTool, chemicalTool, gasTool }, 
  trader_domestics = { genericTool, mineralTool, chemicalTool, foodTool, gasTool },
  trader_pharmacist = { genericTool, mineralTool, chemicalTool, foodTool, gasTool },     
--  social_entertainer = { slitherhorn }
}

commonStartingItems = { marojMelon, survivalKnife, x31Speeder }