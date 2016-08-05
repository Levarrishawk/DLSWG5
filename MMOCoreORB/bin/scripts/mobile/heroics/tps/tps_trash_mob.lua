tps_trash_mob = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_battle_droid",
	customName = "The Short Circuit",
	socialGroup = "death_watch",
	faction = "",
	level = 1,
	chanceHit = 5.5,
	damageMin = 1,
	damageMax = 2,
	baseXp = 0,
	baseHAM = 1,
	baseHAMmax = 1,
	armor = 2,
	resists = {5,5,5,5,5,5,5,5,-1},
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
	scale = 1.0,

	templates = {
		"object/mobile/death_watch_battle_droid.iff",
		"object/mobile/death_watch_battle_droid_02.iff",
		"object/mobile/death_watch_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners", chance = 10000000}
			},
			lootChance = 500000
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(tps_trash_mob, "tps_trash_mob")
