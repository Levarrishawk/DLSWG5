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

  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_pipes_s02.iff", 11.3, -48, -19.0, 610000144, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_pipes_s02.iff", 17.6, -48, -13.4, 610000144, math.rad(90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_pipes_s02.iff", 17.6, -48, -25.7, 610000144, math.rad(-90) )
  
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, -6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, -6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, -6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, -6.1, 610000123, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, -2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, -2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, -2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, -2.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 2.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, -6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 2.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, 6.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 6.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 10.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 10.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, 10.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 10.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 14.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 14.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, 14.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 14.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 128.4, -56, 18.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 128.4, -56, 18.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/item/item_medic_bacta_tank_large.iff", 119.5, -56, 18.1, 610000123, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 119.5, -56, 18.1, 610000123, math.rad(0) )
 
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 111.5, -56, -9.0, 610000124, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 111.5, -56, 3.0, 610000124, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 99.5, -56, -9.0, 610000124, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 99.5, -56, 3.0, 610000124, math.rad(0) )
 
  spawnSceneObject("jakku", "object/tangible/veteran_reward/frn_tech_console_sectional_a.iff", 98, -56, -3.0, 610000124, math.rad(90) )
 
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 43, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 43, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 47, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 47, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 51, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 51, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 55, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 55, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 59, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 59, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 63, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 63, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 67, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 67, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 118.5, -64, 71, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 128.5, -64, 71, 610000126, math.rad(0) )
  spawnSceneObject("jakku", "object/static/installation/mockup_power_generator_fusion_style_1.iff", 123.6, -64, 57, 610000126, math.rad(0) )
      
  spawnSceneObject("jakku", "object/tangible/furniture/all/frn_all_command_console.iff", 83.5, -72, 50.2, 610000128, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 89.4, -72, 54.9, 610000128, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 77.5, -72, 54.9, 610000128, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 89.4, -72, 43.1, 610000128, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_pillar_style_02.iff", 77.5, -72, 43.1, 610000128, math.rad(0) )
  
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 88.4, -74, -77.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 88.4, -74, -84.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 78.4, -74, -77.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/military/bunker_crate_style_01.iff", 78.4, -74, -84.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 88.4, -74, -77.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 88.4, -74, -84.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 78.4, -74, -77.9, 610000131, math.rad(0) )
  spawnSceneObject("jakku", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 78.4, -74, -84.9, 610000131, math.rad(0) )
  

end



function JakkuWeaponsFacilityScreenPlay:spawnMobiles()

--[[  local pMobile = spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)
        self:setMoodString(pMobile, "neutral")
        AiAgent(pMobile):setAiTemplate("idlewander")
        
  spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)--]]

  
end

