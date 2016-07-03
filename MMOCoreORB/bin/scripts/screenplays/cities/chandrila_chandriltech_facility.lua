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
	
	--First Room
	pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,10.6,-12.0,22.0,43,35792128)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,24.2,-12.0,35.4,-137,35792128)
  self:setMoodString(pNpc, "neutral")
	pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,24.5,-12.0,22.0,-53,35792128)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "alert_droideka",60,12.5,-12.0,34.0,137,35792128)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,17.5,-12.0,60.0,174,35792130)
  self:setMoodString(pNpc, "neutral")
  
  --Second Room
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,35.5,-12.0,50.9,-11,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,51.5,-12.0,51.1,-6,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,51.5,-12.0,67.1,176,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,35.6,-12.0,67.0,-179,35792131)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "geonosian_scientist",60,46.6,-12.0,54.6,-94,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",60,56.7,-12.0,63.7,37,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "biogenic_scientist_generic_01",60,40.7,-12.0,65.0,-5,35792131)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_technical_assistant",60,33.3,-12.0,58.8,94,35792131)
  self:setMoodString(pNpc, "neutral")
  
  --Third Room
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,3.3,-12.0,52.5,1,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,10.8,-12.0,66.9,-94,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "biogenic_engineertech",60,9.2,-12.0,53.1,130,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "biogenic_assistant",60,4.0,-12.0,62.5,171,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",60,-1.8,-12.0,74.1,94,35792132)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "biogenic_securitytech",60,2.1,-12.0,118.2,-26,35792132)
  self:setMoodString(pNpc, "neutral")
  
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,3.5,-12.0,99.1,178,35792135)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,34.6,-12.0,73.9,-43,35792139)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,32.3,-20.0,112.1,118,35792140)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "geonosian_worker",60,51.4,-20.0,106.2,-59,35792141)
  self:setMoodString(pNpc, "neutral")
  --fourth room
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,55.6,-20.0,134.9,-93,35792143)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,39.5,-20.0,151.0,84,35792143)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "geonosian_worker",60,43.0,-20.0,154.9,-41,35792143)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "geonosian_worker",60,45.3,-20.0,149.7,87,35792143)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,83.6,-20.0,152.2,175,35792145)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "chandriltech_security_guard",60,83.6,-20.0,109.8,-9,35792145)
  self:setMoodString(pNpc, "neutral")
  
end
