vitiate = Creature:new {
	objectName = "@theme_park_name:emperor_palpatine",
	customName = "Vitiate",
	socialGroup = "dark_jedi",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1299,
	baseXp = 9429,
	baseHAM = 240000,
	baseHAMmax = 300000,
	armor = 0,
	resists = {70,70,70,70,70,70,70,70,50},
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
  creatureBitmask = KILLER + STALKER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,
	scale = 1.1,

	templates = {"object/mobile/ep3/palpatine_hologram.iff"},
	lootGroups = {
    {
      groups = {
        {group = "holocron_dark", chance = 600000},
        {group = "holocron_light", chance = 600000},
        {group = "crystals_premium", chance = 600000},
        {group = "nge_housing_all", chance = 1300000},
        {group = "pistols", chance = 1300000},
        {group = "melee_weapons", chance = 1300000},
        {group = "armor_attachments", chance = 1100000},
        {group = "clothing_attachments", chance = 1100000},
        {group = "carbines", chance = 1300000},
        {group = "dark_jedi_common", chance = 800000}
      }
    }
  },
	weapons = {"dark_jedi_weapons_gen4"},
  conversationTemplate = "",
  attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(vitiate, "vitiate")
