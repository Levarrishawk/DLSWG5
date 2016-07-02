NayliOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NayliOutpostScreenPlay"
}

registerScreenPlay("NayliOutpostScreenPlay", true)

function NayliOutpostScreenPlay:start()
	if (isZoneEnabled("chandrila")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function NayliOutpostScreenPlay:spawnSceneObjects()

--t	spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 27.1, -0.9, 12.0, 35791444, math.rad(0) )

end

function NayliOutpostScreenPlay:spawnMobiles()

	--Outdoors
	local pNpc = spawnMobile("chandrila", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")

	pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5255.0,23.0,345.1,151,0)
	self:setMoodString(pNpc, "conversation")
	
	pNpc = spawnMobile("chandrila", "chandrila_park_ranger",60,-5254.0,23.0,343.0,-18,0)
	self:setMoodString(pNpc, "conversation")
	
	
  -- Squalls
  spawnMobile("chandrila", "squall",60,-5263.9,19.2,296.1,165,0)
  spawnMobile("chandrila", "squall",60,-5249.3,19.2,299,120,0)
  spawnMobile("chandrila", "squall",60,-5231,19.6,303,-82,0)
  spawnMobile("chandrila", "squall",60,-5227.6,19.8,307.4,43,0)
  

  
	

end
