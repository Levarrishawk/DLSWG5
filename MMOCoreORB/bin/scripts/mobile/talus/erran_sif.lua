erran_sif = Creature:new {
	objectName = "@mob/creature_names:erran_sif",
	socialGroup = "sif",
	faction = "sif",
	level = 67,
	chanceHit = 0.67,
	damageMin = 180,
	damageMax = 270,
	baseXp = 6472,
	baseHAM = 12000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {20,20,20,20,20,20,20,20,-1},
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

	templates = {"object/mobile/dressed_erran_sif.iff"},
	lootGroups = {
		{
			groups = {
				{group = "jedi_robes_tier2", chance = 10000000},
				{group = "color_crystals", chance = 10000000},
				{group = "crystals_select", chance = 10000000}
			}
		}
	},
	weapons = {"sif_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(erran_sif, "erran_sif")
