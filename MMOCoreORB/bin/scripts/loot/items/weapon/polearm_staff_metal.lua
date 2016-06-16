--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

polearm_staff_metal = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/melee/polearm/lance_staff_metal.iff",
	craftingValues = {
		{"mindamage",52,84,0},
		{"maxdamage",90,137,0},
		{"attackspeed",1,1,1},
		{"woundchance",7,7,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-5,5,0},
		{"maxrangemod",-5,5,0},
		{"midrange",3,3,0},
		{"midrangemod",-5,5,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",9,4,0},
		{"attackactioncost",66,36,0},
		{"attackmindcost",39,21,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 600,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("polearm_staff_metal", polearm_staff_metal)
