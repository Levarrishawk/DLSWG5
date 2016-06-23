theme_park_rebel_supervisor = Creature:new {
	objectName = "@mob/creature_names:rebel_brigadier_general",
	socialGroup = "rebel",
	faction = "rebel",
	level = 25,
	chanceHit = 0.36,
	damageMin = 240,
	damageMax = 250,
	baseXp = 2637,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {20,20,40,0,0,-1,0,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_noble_human_male_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "theme_park_rebel_mission_target_convotemplate",
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(theme_park_rebel_supervisor, "theme_park_rebel_supervisor")
