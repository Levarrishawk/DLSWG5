BunkerRebelChasmScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "BunkerRebelChasmScreenPlay"
}

registerScreenPlay("BunkerRebelChasmScreenPlay", true)

function BunkerRebelChasmScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function BunkerRebelChasmScreenPlay:spawnSceneObjects()
  --instance1 begin
	spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -31.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -30.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -29.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -28.0, -25.0, 410000026, math.rad(90) )
  
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -31.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -30.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -29.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -28.0, -25.0, 410000026, math.rad(90) )
  
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -31.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -30.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -29.0, -25.0, 410000026, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -28.0, -25.0, 410000026, math.rad(90) )
  
  --instance1 end
  
  
end

function BunkerRebelChasmScreenPlay:spawnMobiles()

	--placeholder
	local pNpc = spawnMobile("dungeon2", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")
	
	--instance1 start
	
	--instance1 end



end
