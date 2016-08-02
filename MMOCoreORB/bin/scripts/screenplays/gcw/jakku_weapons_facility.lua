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
  

  
end



function JakkuWeaponsFacilityScreenPlay:spawnMobiles()

--[[  local pMobile = spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)
        self:setMoodString(pMobile, "neutral")
        AiAgent(pMobile):setAiTemplate("idlewander")
        
  spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)--]]

  
end

