local ObjectManager = require("managers.object.object_manager")

JakkuWeaponsFacilityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,


}

registerScreenPlay("JakkuWeaponsFacilityScreenPlay", true)

function JakkuWeaponsFacilityScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function JakkuWeaponsFacilityScreenPlay:spawnSceneObjects()
  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_desk_map_table.iff", -32.5, -28.0, -23, 610000119, math.rad(0) )
  spawnSceneObject("jakku", "object/tangible/furniture/imperial/bunker_table_giant_style_01.iff", 67.4, -74.0, -55.9, 610000130, math.rad(0) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", -26.6, -28, -17.1, 610000119, math.rad(-90) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", -26.6, -28, -28.9, 610000119, math.rad(0) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", -38.4, -28, -17.1, 610000119, math.rad(180) ) 
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", -38.4, -28, -28.9, 610000119, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 43.5, -46, 47.0, 610000143, math.rad(-90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 27.5, -46, 47.0, 610000143, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 35.5, -46, 54.8, 610000143, math.rad(180) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_device_s01.iff", 35.4, -48, 52.7, 610000143, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 40.5, -48, 51.2, 610000143, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 30.5, -48, 51.2, 610000143, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 79.6, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 87.6, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 83.5, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 79.6, -48, 48.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 87.6, -48, 48.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 79.6, -48, 44.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 87.6, -48, 44.0, 610000142, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 79.6, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 87.6, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 83.5, -48, 52.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 79.6, -48, 48.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 87.6, -48, 48.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 79.6, -48, 44.0, 610000142, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 87.6, -48, 44.0, 610000142, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/general/ins_shield_generator.iff", 101.4, -49, 29.1, 610000141, math.rad(45) )
  
  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_technical_console_s02.iff", 83.5, -48, -36.9, 610000146, math.rad(45) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 83.5, -48, -36.9, 610000146, math.rad(45) )
  
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 89.4, -48, -31.1, 610000146, math.rad(-90) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 89.4, -48, -42.9, 610000146, math.rad(0) )
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 77.6, -48, -31.1, 610000146, math.rad(180) ) 
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_d.iff", 77.6, -48, -42.9, 610000146, math.rad(90) )
  
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 43.5, -46, -37.0, 610000145, math.rad(-90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 27.5, -46, -37.0, 610000145, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 35.5, -46, -44.9, 610000145, math.rad(0) )

  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_command_console.iff", 35.5, -48, -36.8, 610000145, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.4, -48, -42.9, 610000145, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -48, -42.9, 610000145, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 29.6, -48, -31.1, 610000145, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 41.4, -48, -31.1, 610000145, math.rad(0) )
end



function JakkuWeaponsFacilityScreenPlay:spawnMobiles()

--[[  local pMobile = spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)
        self:setMoodString(pMobile, "neutral")
        AiAgent(pMobile):setAiTemplate("idlewander")
        
  spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)--]]

  
end

