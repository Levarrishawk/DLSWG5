tps_boss1 = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "Power Station Guardian",
	socialGroup = "death_watch",
	faction = "",
	level = 160,
	chanceHit = 18,
	damageMin = 1100,
	damageMax = 1650,
	baseXp = 19000,
	baseHAM = 175000,
	baseHAMmax = 180000,
	armor = 2,
	resists = {90,90,15,90,90,90,90,90,-1},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	diet = NONE,
	scale = 2.40,

	templates = {
				"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				
			},
			lootChance = 500000
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(tps_boss1, "tps_boss1")
