hirsch_sif = Creature:new {
	objectName = "@mob/creature_names:hirsch_sif",
	socialGroup = "sif",
	faction = "sif",
	level = 57,
	chanceHit = 0.570000,
	damageMin = 130,
	damageMax = 170,
	baseXp = 5555,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_hirsch_sif.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_select", chance = 10000000},
				{group = "jedi_robes_tier2", chance = 10000000},
				{group = "jedi_robes_tier2_dark", chance = 10000000},
				{group = "color_crystals", chance = 10000000}
			}
		}
	},
	weapons = {"sif_weapons"},
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(hirsch_sif, "hirsch_sif")
