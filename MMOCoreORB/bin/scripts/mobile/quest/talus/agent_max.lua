agent_max = Creature:new {
	objectName = "",
	socialGroup = "",
	faction = "",
	level = 10,
	chanceHit = 0.3,
	damageMin = 110,
	damageMax = 130,
	baseXp = 714,
	baseHAM = 2000,
	baseHAMmax = 2400,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
		"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "task_loot_toxic_rations", chance = 10000000}
			},
			lootChance = 1
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(marksmanmid,brawlermid)
}

CreatureTemplates:addCreatureTemplate(agent_max, "agent_max")
