rodian_sif_02 = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	customName = "a rodian Sif",
	socialGroup = "sif",
	faction = "sif",
	level = 45,
	chanceHit = 0.47,
	damageMin = 70,
	damageMax = 150,
	baseXp = 4461,
	baseHAM = 970,
	baseHAMmax = 1190,
	armor = 0,
	resists = {40,40,0,-1,-1,0,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_talus_sif_mercenary_rodian_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 5000000},
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"sif_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(rodian_sif_02, "rodian_sif_02")
