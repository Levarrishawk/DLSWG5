object_building_player_yoda_house = object_building_player_shared_yoda_house:new {
	lotSize = 1,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "taanab", "dathomir", "yavin4", "kaas", "taanab", "ghomrassen"},
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 300},
		{"private_buff_mind", 300},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {

	},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 5,
	width = 7
}

ObjectTemplates:addTemplate(object_building_player_yoda_house, "object/building/player/yoda_house.iff")
