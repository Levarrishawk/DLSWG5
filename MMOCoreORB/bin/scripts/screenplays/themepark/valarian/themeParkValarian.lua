kavas_missions =
	{
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "agent_max", planetName = "talus", npcName = "Agent Max" }
			},
			secondarySpawns =	{},
			itemSpawns =
			{
				{},
			},
			rewards =
			{
				{ rewardType = "credits", amount = 5000 },
				{ rewardType = "faction", faction = "townsperson", amount = 50 },
				{ rewardType = "loot",  lootGroup = "startergrenade" }
				
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
			{ npcTemplate = "bith_sniper", planetName = "talus", npcName = "The Captain" },
			{ npcTemplate = "bith_sniper", planetName = "talus", npcName = "Captains Guard" },
      { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Captains Guard" },
      { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Captains Guard" }
			},
			secondarySpawns =	{
		
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 6000 },
				{ rewardType = "faction", faction = "townsperson", amount = 75 },
				{ rewardType = "loot",  lootGroup = "startersword" }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "ysho", planetName = "talus", npcName = "Bick" }
			},
			secondarySpawns =
			{
			{ npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior" },
			{ npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior" },
			{ npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior" },
			{ npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior" },
			{ npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior" },
			{ npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior" }
			},
			itemSpawns =
			{
				{}
			},
			rewards =
			{
				{ rewardType = "credits", amount = 7000 },
				{ rewardType = "faction", faction = "townsperson", amount = 100 },
				{ rewardType = "loot",  lootGroup = "starterpistol" }
			}
		},
		{
			missionType = "retrieve",
			primarySpawns =
			{
				{ npcTemplate = "ysho", planetName = "talus", npcName = "Bick" }
			},
			secondarySpawns =	{},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/camera_s01.iff", itemName = "A Camera" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 7200 },
				{ rewardType = "faction", faction = "townsperson", amount = 125 },
				{ rewardType = "loot",  lootGroup = "startercarbine" }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" }
			},
			secondarySpawns =	{
			 { npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" },
			 { npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" },
			 { npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" },
			 { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
			 { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
			 { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
			 { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
			 { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
			 { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" }
			               
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 6000 },
				{ rewardType = "faction", faction = "townsperson", amount = 150 },
				{ rewardType = "loot",  lootGroup = "starterrifle" }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" },
				 { npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "jabba_enforcer", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" },
       { npcTemplate = "bith_sniper", planetName = "talus", npcName = "Talus Savior Thug" }
			},
			secondarySpawns = {
			
			},
			itemSpawns =
			{
				{}
			},
			rewards =
			{
				{ rewardType = "credits", amount = 7500 },
				{ rewardType = "faction", faction = "townsperson", amount = 200 },
				{ rewardType = "loot",  lootGroup = "starteraxe" }
			}
		}
	}

ind_missions =
	{
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "valarian_compound_guard_quest", planetName = "talus", npcName = "Tylo" }
			},
			secondarySpawns =	{},
			itemSpawns =
			{
				{}
			},
			rewards =
			{
				{ rewardType = "loot",  lootGroup = "starterarmor1" },
				{ rewardType = "loot",  lootGroup = "starterarmor2" },
				{ rewardType = "loot",  lootGroup = "starterarmor3" },
				{ rewardType = "loot",  lootGroup = "starterarmor4" },
				{ rewardType = "loot",  lootGroup = "starterarmor5" },
				{ rewardType = "loot",  lootGroup = "starterarmor6" },
				{ rewardType = "loot",  lootGroup = "starterarmor7" },
				{ rewardType = "loot",  lootGroup = "starterarmor8" },
				{ rewardType = "loot",  lootGroup = "starterarmor9" },
				{ rewardType = "faction", faction = "townsperson", amount = 50 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" },
				{ npcTemplate = "rot_mite", planetName = "talus", npcName = "Rot Mite" }
			},
			secondarySpawns =
			{
				{}
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 8000 },
				{ rewardType = "faction", faction = "townsperson", amount = 100 }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "dr_kaum", planetName = "tatooine", npcName = "Dr. Kaum" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 3000 },
				{ rewardType = "loot",  lootGroup = "task_reward_ind_q3" },
				{ rewardType = "faction", faction = "valarian", amount = 125 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "assassin", planetName = "tatooine", npcName = "Roden Venthral" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 5000 },
				{ rewardType = "faction", faction = "valarian", amount = 150 }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "ind_jabba_enforcer", planetName = "tatooine", npcName = "Jabba's enforcer" },
			},
			secondarySpawns =
			{
				{ npcTemplate = "jabba_enforcer", planetName = "tatooine", npcName = "Jabba's enforcer" },
				{ npcTemplate = "jabba_enforcer", planetName = "tatooine", npcName = "Jabba's enforcer" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/toxic_rations.iff", itemName = "Toxic Rations" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 7000 },
				{ rewardType = "faction", faction = "valarian", amount = 200 }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "ind_jabba_henchman", planetName = "tatooine", npcName = "Jabba's Delivery Boy" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "jabba_enforcer", planetName = "tatooine", npcName = "Jabba's enforcer" },
				{ npcTemplate = "jabba_enforcer", planetName = "tatooine", npcName = "Jabba's enforcer" },
				{ npcTemplate = "jabba_enforcer", planetName = "tatooine", npcName = "Jabba's enforcer" },
				{ npcTemplate = "jabba_enforcer", planetName = "tatooine", npcName = "Jabba's enforcer" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/petrified_avian_egg.iff", itemName = "Petrified Avian Egg" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 8000 },
				{ rewardType = "faction", faction = "valarian", amount = 200 }
			}
		}
	}

lady_valarian_missions =
	{
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "jabba_enforcer", planetName = "tatooine", npcName = "Una Gitori" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 2000 },
				{ rewardType = "faction", faction = "valarian", amount = 75 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "tough_thug_male_rodian", planetName = "tatooine", npcName = "Soobu Javeedo" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "thug", planetName = "tatooine", npcName = "a Thug" },
				{ npcTemplate = "thug", planetName = "tatooine", npcName = "a Thug" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 4000 },
				{ rewardType = "faction", faction = "valarian", amount = 100 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "bodyguard_zabrak_female", planetName = "tatooine", npcName = "Kilth Saanu" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "thug", planetName = "tatooine", npcName = "a Thug" },
				{ npcTemplate = "thug", planetName = "tatooine", npcName = "a Thug" },
				{ npcTemplate = "thug", planetName = "tatooine", npcName = "a Thug" },
				{ npcTemplate = "thug", planetName = "tatooine", npcName = "a Thug" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 6000 },
				{ rewardType = "faction", faction = "valarian", amount = 125 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "assassin_twilek_mate", planetName = "tatooine", npcName = "Arrud Barsoomu" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 8000 },
				{ rewardType = "faction", faction = "valarian", amount = 200 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "chadra_fan_assassin", planetName = "tatooine", npcName = "Duska Murgo" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "ig_assassin_droid", planetName = "tatooine", npcName = "an IG assassin droid" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 10000 },
				{ rewardType = "faction", faction = "valarian", amount = 225 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "brigand_assassin", planetName = "tatooine", npcName = "Siron Vurn'ke" },
			},
			secondarySpawns =
			{
				{ npcTemplate = "weequay_thug", planetName = "tatooine", npcName = "a Weequay Thug" },
				{ npcTemplate = "weequay_thug", planetName = "tatooine", npcName = "a Weequay Thug" },
				{ npcTemplate = "weequay_thug", planetName = "tatooine", npcName = "a Weequay Thug" },
				{ npcTemplate = "weequay_thug", planetName = "tatooine", npcName = "a Weequay Thug" },
				{ npcTemplate = "weequay_thug", planetName = "tatooine", npcName = "a Weequay Thug" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 14000 },
				{ rewardType = "faction", faction = "valarian", amount = 300 },
				{ rewardType = "loot",  lootGroup = "task_reward_valarian_dagger" }
			}
		},
	}

npcMapThemeParkValarian =
	{
		{
			spawnData = { planetName = "tatooine", npcTemplate = "lady_valarian", x = -23.84, z = 9.01, y = 0.61, direction = 147, cellID = 1076945, position = STAND },
			worldPosition = { x = 3363, y = -4607 },
			npcNumber = 4,
			stfFile = "@static_npc/tatooine/lady_valarian",
			missions = lady_valarian_missions
		},
		{
			spawnData = { planetName = "talus", npcTemplate = "ind", x = 389, z = 6.0, y = -2949, direction = -89, cellID = 0, position = STAND },
			worldPosition = { x = 389, y = -2949 },
			npcNumber = 2,
			stfFile = "@spawning/static_npc/tato_valarian_ind",
			missions = ind_missions
		},
		{
			spawnData = { planetName = "talus", npcTemplate = "contractor2", x = 329.8, z = 6.0, y = -2921, direction = 83, cellID = 0, position = STAND },
			worldPosition = { x = 329, y = -2920 },
			npcNumber = 1,
			stfFile = "@spawning/static_npc/tato_valarian_kavas_urdano",
			missions = kavas_missions
		},
	}

ThemeParkValarian = ThemeParkLogic:new {
	numberOfActs = 1,
	npcMap = npcMapThemeParkValarian,
	className = "ThemeParkValarian",
	screenPlayState = "theme_park_valarian",
	requiresEliteCombat = false,
	distance = 800
}

registerScreenPlay("ThemeParkValarian", true)

theme_park_valarian_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = ThemeParkValarian
}
theme_park_valarian_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = ThemeParkValarian
}