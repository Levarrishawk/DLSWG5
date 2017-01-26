sif_mercenary = Creature:new {
	objectName = "@mob/creature_names:trandoshan_sif",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sif",
	faction = "sif",
	level = 30,
	chanceHit = 0.42,
	damageMin = 125,
	damageMax = 160,
	baseXp = 3642,
	baseHAM = 890,
	baseHAMmax = 1090,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
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

	templates = {"object/mobile/dressed_talus_sif_mercenary_trand_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 4500000},				
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"sif_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(sif_mercenary, "sif_mercenary")
