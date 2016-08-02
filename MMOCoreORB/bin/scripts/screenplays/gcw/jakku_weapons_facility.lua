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
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 43.6, -46, 47.0, 610000143, math.rad(-90) )
  spawnSceneObject("jakku", "object/static/structure/general/allum_mine_wall_lamp_s01.iff", 27.5, -46, 47.0, 610000143, math.rad(90) )
  
end



function JakkuWeaponsFacilityScreenPlay:spawnMobiles()

--[[  local pMobile = spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)
        self:setMoodString(pMobile, "neutral")
        AiAgent(pMobile):setAiTemplate("idlewander")
        
  spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)--]]

  
end

