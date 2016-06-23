THEME_PARK_REBEL_BADGE = 107

c3po_missions = 
{
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_selonian_female", planetName = "chandrila", npcName = "random" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{ 
			{ itemTemplate = "object/tangible/food/base/side_dish_base.iff", itemName = "Food" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 5000 } 
		}
	},
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_captain", planetName = "chandrila", npcName = "Captain Montrasword" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{ 
			{ itemTemplate = "object/tangible/medicine/crafted/medpack_wound_health_a.iff", itemName = "Medicine" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 10000 } 
		}
	},
	{ 
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_captain", planetName = "chandrila", npcName = "Captain Taergle" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 15000 } 
		} 
	},
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_captain", planetName = "chandrila", npcName = "Captain Drexsler" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{ 
			{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Contact Information" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 20000 }, 
			{ rewardType = "faction", faction = "rebel", amount = 50 }, 
			{ rewardType = "loot",  lootGroup = "theme_park_reward_rebel_c_3po" }
		}
	}
}

qualdo_missions = 
{
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_ithorian", planetName = "chandrila", npcName = "I'klee'trao" } 
		}, 
		secondarySpawns = {},
		itemSpawns = 
		{ 
			{ itemTemplate = "object/tangible/loot/tool/comlink_naboo_broken.iff", itemName = "Comlink" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 2000 } 
		} 
	},
	{ 
		missionType = "assassinate",
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_imperial_sergeant_montage", planetName = "chandrila", npcName = "a Chandriltech Security Guard" } 
		}, 
		secondarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper", planetName = "chandrila", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "chandrila", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "chandrila", npcName = "Stormtrooper" }, 
			{ npcTemplate = "stormtrooper", planetName = "chandrila", npcName = "Stormtrooper" }  
		}, 
		itemSpawns = 
		{
			{ itemTemplate = "object/tangible/component/item/quest_item/particle_sensor.iff", itemName = "Compound" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 2500 } 
		}
	},
	{ 
		missionType = "assassinate", 
		primarySpawns = 
		{
			{ npcTemplate = "theme_park_imperial_captain_sargon", planetName = "chandrila", npcName = "Captain Sargon" } 
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "chandrila", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "chandrila", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "chandrila", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "chandrila", npcName = "Stormtrooper" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 3000 } 
		}
	},
	{ 
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_ithorian", planetName = "chandrila", npcName = "I'klee'trao" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "rebel", amount = 7500 }, 
			{ rewardType = "loot", lootGroup = "theme_park_reward_rebel_qualdo_herm" } 
		}
	}
}

wedge_missions = 
{
	{ 
		missionType = "deliver",
	 	primarySpawns = 
	 	{ 
	 		{ npcTemplate = "theme_park_rebel_officer", planetName = "rori", npcName = "Officer Devlin" } 
	 	}, 
	 	secondarySpawns = {}, 
	 	itemSpawns = 
	 	{
	 		{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Confirmation Letter" }
	 	}, 
	 	rewards = 
	 	{ 
	 		{ rewardType = "credits", amount = 3500 } 
	 	}
	},
	{ 
		missionType = "assassinate",
		primarySpawns =  
		{ 
			{ npcTemplate = "theme_park_rebel_iris", planetName = "rori", npcName = "Iris" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 4000 } 
		}
	},
	{ 
		missionType = "escort",
	 	primarySpawns = 
	 	{ 
	 		{ npcTemplate = "theme_park_rebel_captain", planetName = "rori", npcName = "General Graise" } 
	 	}, 
	 	secondarySpawns = 
	 	{
			{ npcTemplate = "stormtrooper", planetName = "rori", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "rori", npcName = "Stormtrooper" }
		}, 
	 	itemSpawns = {}, 
	 	rewards = 
	 	{ 
	 		{ rewardType = "credits", amount = 4500 } 
	 	}
	}
}

leia_missions = 
{
	{ 
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_deasie_afresel", planetName = "corellia", npcName = "Deasie A'Fresel" } 
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "corellia", npcName = "Stormtrooper" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 5500 } 
		}
	},
	{ 
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_officer_tennelt", planetName = "corellia", npcName = "Officer Tennelt" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = { }, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 6000 } 
		} 
	},
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_selonian_female", planetName = "corellia", npcName = "random" } 
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "corellia", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "corellia", npcName = "Stormtrooper" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 6500 } 
		}
	},
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_bothan", planetName = "corellia", npcName = "Fnast" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{ 
	 		{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Imperial Codes" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 7000 } 
		} 
	},
	{ 
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_imperial_commander", planetName = "corellia", npcName = "Imperial Undercover Commander" } 
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "corellia", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "corellia", npcName = "Stormtrooper" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "rebel", amount = 12500 },
			{ rewardType = "loot", lootGroup = "theme_park_reward_rebel_leia_organa" }
		}
	}
}


han_missions = 
{
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_edycu", planetName = "lok", npcName = "E'Dycu" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 900 } 
		}
	},
	{
		missionType = "confiscate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_pirate_holocron", planetName = "lok", npcName = "random" }, 
			{ npcTemplate = "theme_park_rebel_pirate", planetName = "lok", npcName = "random" },
			{ npcTemplate = "theme_park_rebel_pirate", planetName = "lok", npcName = "random" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{
			{ itemTemplate = "object/tangible/loot/misc/holocron_splinters_sith_s01.iff", itemName = "" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 950 } 
		}
	},
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_pirate", planetName = "lok", npcName = "Bandit Leader" } 
		}, 
		secondarySpawns = 
		{			
			{ npcTemplate = "theme_park_rebel_pirate", planetName = "lok", npcName = "Pirate" },
			{ npcTemplate = "theme_park_rebel_pirate", planetName = "lok", npcName = "Pirate" },
			{ npcTemplate = "theme_park_rebel_pirate", planetName = "lok", npcName = "Pirate" }  
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1000 } 
		}
	},
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_edycu", planetName = "lok", npcName = "Eso Itrik" } 
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "lok", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "lok", npcName = "Stormtrooper" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1050 } 
		}
	},
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_nym_contact", planetName = "lok", npcName = "Nateba Kerr" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{ 
			{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Payment" }
		}, 
		rewards = 
		{
			{ rewardType = "faction", faction = "rebel", amount = 175 }, 
			{ rewardType = "loot",  lootGroup = "theme_park_reward_rebel_han_solo" }
		}
	}
}

ackbar_missions =
{
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
      { npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" },
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "Stormtrooper" }
		}, 
		secondarySpawns = {}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 10000 } 
		}
	}
}

mon_missions = 
{
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{
			{ npcTemplate = "theme_park_rebel_bothan_spy", planetName = "dantooine", npcName = "Wala Am'kre" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{ 
	 		{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Holovid" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1300 } 
		} 
	},
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper_squad_leader", planetName = "dantooine", npcName = "Strike Team Leader" }
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-221" },
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-982" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1350 } 
		}
	},
	{
		missionType = "escort", 
		missionDescription = "MON MOTHMA needs you to ESCORT the CAPTAIN of the Corvette back to the REBEL BASE",
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_altapi_tmman", planetName = "dantooine", npcName = "Altapi T'mman" } 
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-179" },
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-322" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1400 } 
		}
	},
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper_squad_leader", planetName = "dantooine", npcName = "TK-1132" }
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-658" },
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-459" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1450 } 
		}
	},
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_imperial_engineer", planetName = "dantooine", npcName = "Engineer" } 
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-134" },
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-873" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1500 } 
		}
	},
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "imperial_general", planetName = "dantooine", npcName = "Imperial General" }
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-297" },
			{ npcTemplate = "stormtrooper", planetName = "dantooine", npcName = "TK-447" }
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "rebel", amount = 225 }, 
			{ rewardType = "loot",  lootGroup = "theme_park_reward_rebel_mon_mothma" }
		}
	},
}

luke_missions = 
{
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_supervisor", planetName = "yavin4", npcName = "Supervisor" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1750 } 
		}
	},
	{
		missionType = "confiscate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_big_creature", planetName = "yavin4", npcName = "Big Creature" }
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{
	 		{ itemTemplate = "object/tangible/loot/tool/recording_rod_broken.iff", itemName = "R2 Motivator Unit" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1800 } 
		}
	},
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_supervisor", planetName = "yavin4", npcName = "Expidition Team Member" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1850 } 
		}
	},
	{
		missionType = "confiscate",  
		primarySpawns = 
		{ 
			{ npcTemplate = "theme_park_rebel_big_creature_cage", planetName = "yavin4", npcName = "Big Creature" }
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{
	 		{ itemTemplate = "object/tangible/loot/misc/cage_s01.iff", itemName = "" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 1900 } 
		}
	},
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{
			{ npcTemplate = "theme_park_rebel_supervisor", planetName = "yavin4", npcName = "Tribesman" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{ 
	 		{ itemTemplate = "object/tangible/loot/misc/cage_s01.iff", itemName = "An Empty Cage" }
		}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "rebel", amount = 300 }, 
			{ rewardType = "credits", amount = 1950 },
			{ rewardType = "loot",  lootGroup = "theme_park_reward_rebel_luke_skywalker" },
			{ rewardType = "badge", badge = THEME_PARK_REBEL_BADGE }			
		} 
	},
}

npcMapRebel = 
{ 
	{ 
		spawnData = { planetName = "chandrila", npcTemplate = "c_3po", x = -2.3, z = 2.0, y = 4.0, direction = 150, cellID = 35791629, position = STAND }, 
		worldPosition = { x = 170, y = -3067 }, 
		npcNumber = 1,   
		stfFile = "@theme_park_rebel/c3po",
		missions = c3po_missions
	},
	{ 
		spawnData = { planetName = "corellia", npcTemplate = "r2d2", x = -3.98, z = 1.01, y = -0.67, direction = 58, cellID = 8555472, position = STAND }, 
		npcNumber = -1,  
		stfFile = "",               
		missions = {} 
	},
	{ 
		spawnData = { planetName = "corellia", npcTemplate = "record_keeper_rebel", x = 6.0, z = 7.00, y = -5.18, direction = 0, cellID = 8555480, position = STAND }, 
		npcNumber = -2,  
		stfFile = "",               
		missions = {} 
	},
	{ 
		spawnData = { planetName = "chandrila", npcTemplate = "qualdo_herm", x = 14.91, z = 1.01, y = -6.68, direction = 0, cellID = 35791632, position = STAND }, 
		worldPosition = { x = 160, y = -3084 }, 
		npcNumber = 2,   
		stfFile = "@theme_park_rebel/qualdo_herm",    
		missions = qualdo_missions 
	},
	{ 
		spawnData = { planetName = "rori", npcTemplate = "wedge_antilles", x = 3682.8, z = 103.0, y = -6489.9, direction = -58, cellID = 0, position = STAND }, 
		worldPosition = { x = 3682, y = -6489 }, 
		npcNumber = 4,   
		stfFile = "@theme_park_rebel/wedge_antilles", 
		missions = wedge_missions 
	},
	{ 
		spawnData = { planetName = "corellia", npcTemplate = "leia_organa", x = -11.13, z = 7.00971, y = 11.31, direction = 175, cellID = 8555481, position = STAND }, 
		worldPosition = { x = -6506.3, y = 5974.2 }, 
		npcNumber = 8,   
		stfFile = "@theme_park_rebel/princess_leia",  
		missions = leia_missions 
	},
	{ 
		spawnData = { planetName = "lok", npcTemplate = "chewbacca", x = -28.48, z = -0.519991, y = 5.87, direction = 12.0003, cellID = 8145388, position = STAND }, 
		npcNumber = -1,  
		stfFile = "",               
		missions = {} 
	},
	{ 
		spawnData = { planetName = "lok", npcTemplate = "han_solo", x = -30.2, z = -0.519991, y = 7.24, direction = 45.0013, cellID = 8145388, position = STAND }, 
		worldPosition = { x = 471.5, y = 5052.1 }, 
		npcNumber = 16,  
		stfFile = "@theme_park_rebel/han_solo",       
		missions = han_missions 
	},
	{ 
		spawnData = { planetName = "dantooine", npcTemplate = "ackbar", x = -14.4, z = 1.0, y = -21.7, direction = 0, cellID = 6555566, position = STAND }, 
		worldPosition = { x = -6812.5, y = 5560.7 }, 
		npcNumber = 32,  
		stfFile = "@theme_park_rebel/captain_ackbar", 
		missions = ackbar_missions 
	},
	{ 
		spawnData = { planetName = "dantooine", npcTemplate = "mon_mothma", x = -3.4, z = 7.0, y = -12.2, direction = -34, cellID = 6555568, position = STAND }, 
		worldPosition = { x = -6823.6, y = 5551.2 }, 
		npcNumber = 64, 
		stfFile = "@theme_park_rebel/mon_mothma",     
		missions = mon_missions 
	},
	{ 
		spawnData = { planetName = "yavin4", npcTemplate = "luke_skywalker", x = 1.2, z = -6.0, y = -26.8, direction = 180, cellID = 3465390, position = STAND }, 
		worldPosition = { x = 5029.9, y = 5536.6 }, 
		npcNumber = 128, 
		stfFile = "@theme_park_rebel/luke_skywalker", 
		missions = luke_missions 
	}
}

permissionMapRebel = {
	{
		planetName = "corellia", 
		regionName = "rebel_hideout",		
		permissions = 
		{ 
			{ 
				cells = { 8555471, 8555472, 8555473, 8555474, 8555475, 8555476, 8555477, 8555478, 8555479, 8555480, 8555481, 8555482 },
				conditions = 
				{
					{ permissionType = "faction" }
				}
			}
		}
	},
	{
		planetName = "dantooine", 
		regionName = "abandoned_rebel_base_1",
		permissions = 
		{ 
			{
				cells = { 6555559, 6555560, 6555561, 6555562, 6555563, 6555564, 6555565, 6555566, 6555567, 6555568, 6555569, 6555570 },
				conditions = 
				{
					{ permissionType = "faction" }
				}
			}
		}
	},
	{
		planetName = "yavin4",
		regionName = "temple_of_exar_kun",
		permissions =
		{
			{
				cells = { 3465380, 3465381, 3465382, 3465383, 3465384, 3465385, 3465386, 3465387, 3465388, 3465389 },
				conditions = 
				{
					{ permissionType = "missionState", mission = "theme_park_rebel", missionState = 128 },
					{ permissionType = "faction" }
				}
			},
			{
				cells = { 3465390, 3465391, 3465392, 3465393, 3465394 },
				conditions = 
				{
					{ permissionType = "missionState", mission = "theme_park_rebel", missionState = 256 },
					{ permissionType = "faction" }
				}
			}
		}
	}
}

ThemeParkRebel = ThemeParkLogic:new {
	numberOfActs = 1,
	npcMap = npcMapRebel,
	permissionMap = permissionMapRebel,
	className = "ThemeParkRebel",
	screenPlayState = "rebel_theme_park",
	missionDescriptionStf = "@theme_park_rebel/quest_details:rebel_hideout_",
	missionCompletionMessageStf = "@theme_park/messages:rebel_completion_message",
	faction = FACTIONREBEL
}

registerScreenPlay("ThemeParkRebel", true)

theme_park_rebel_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = ThemeParkRebel
}
theme_park_rebel_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = ThemeParkRebel
}
