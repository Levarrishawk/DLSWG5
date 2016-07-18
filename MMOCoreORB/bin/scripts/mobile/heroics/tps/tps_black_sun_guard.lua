tps_black_sun_guard = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_blksun_guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 115,
	chanceHit = 0.95,
	damageMin = 620,
	damageMax = 950,
	baseXp = 9057,
	baseHAM = 37500,
	baseHAMmax = 55000,
	armor = 2,
	resists = {20,20,95,95,50,50,45,45,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/dressed_black_sun_guard.iff"},
	lootGroups = {
		{
			groups = {
			
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(tps_black_sun_guard, "tps_black_sun_guard")
