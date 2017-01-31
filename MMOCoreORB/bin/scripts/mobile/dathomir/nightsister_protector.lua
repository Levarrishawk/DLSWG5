nightsister_protector = Creature:new {
	objectName = "@mob/creature_names:nightsister_protector",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 131,
	chanceHit = 4.75,
	damageMin = 170,
	damageMax = 250,
	baseXp = 12424,
	baseHAM = 20000,
	baseHAMmax = 21000,
	armor = 2,
	resists = {15,25,15,45,45,45,45,45,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_protector.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_premium", chance = 500000},
        {group = "color_crystals", chance = 500000},
        {group = "nightsister_common", chance = 2000000},
        {group = "armor_attachments", chance = 250000},
        {group = "clothing_attachments", chance = 250000},
        {group = "jedi_robes_tier4", chance = 250000},
        {group = "jedi_robes_tier4_dark", chance = 250000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamid,brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(nightsister_protector, "nightsister_protector")
