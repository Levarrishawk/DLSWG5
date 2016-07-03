ChandrilTechScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "ChandrilTechScreenPlay"
}

registerScreenPlay("ChandrilTechScreenPlay", true)

function ChandrilTechScreenPlay:start()
	if (isZoneEnabled("chandrila")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function ChandrilTechScreenPlay:spawnSceneObjects()
--[[
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/couch_s01.iff", 9.9, 0.6, 3.5, 35792086, math.rad(-90) )
	spawnSceneObject("chandrila", "object/tangible/item/lytus_family_artefact.iff", 9.9, 0.6, 3.5, 35792086, math.rad(-90) )
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/coffee_table_s01.iff", 8.8, 0.6, 3.3, 35792086, math.rad(90) )
	
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/couch_s01.iff", 6.3, 0.6, 0.6, 35792086, math.rad(0) )
	spawnSceneObject("chandrila", "object/tangible/item/lytus_family_artefact.iff", 6.3, 0.6, 0.6, 35792086, math.rad(0) )
	
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/couch_s01.iff", 2.1, 0.6, 0.6, 35792086, math.rad(0) )
	spawnSceneObject("chandrila", "object/tangible/item/lytus_family_artefact.iff", 2.1, 0.6, 0.6, 35792086, math.rad(0) )
	
	spawnSceneObject("chandrila", "object/tangible/furniture/cheap/couch_s01.iff", 3.0, 0.6, 6.2, 35792086, math.rad(180) )
  spawnSceneObject("chandrila", "object/tangible/item/lytus_family_artefact.iff", 3.0, 0.6, 6.2, 35792086, math.rad(180) )
  
  spawnSceneObject("chandrila", "object/tangible/terminal/terminal_mission.iff", -5249.1, 19.9, 341.8, 0, math.rad(90) )
  --]]
end

function ChandrilTechScreenPlay:spawnMobiles()

	--Outdoors
	local pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
	self:setMoodString(pNpc, "neutral")
	pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
	
	
  
end
