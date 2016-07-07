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
 
    --Door1 Block
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
  -- Door2 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -35.4, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -35.4, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -35.4, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -35.4, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -37.1, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -37.1, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -37.1, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -37.1, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -38.6, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -38.6, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -38.6, 410000024, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -38.6, 410000024, math.rad(0) )  
  -- Door3 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 20.9, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 20.9, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 20.9, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 20.9, 410000040, math.rad(0) )    
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 22.4, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 22.4, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 22.4, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 22.4, 410000040, math.rad(0) )  
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 19.6, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 19.6, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 19.6, 410000040, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 19.6, 410000040, math.rad(0) )  
  --Entry Door Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -6.4, -5.2, -15.4, 410000009, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -6.4, -4.2, -15.4, 410000009, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -6.4, -3.2, -15.4, 410000009, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -6.4, -2.2, -15.4, 410000009, math.rad(90) ) 
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.5, -5.2, -15.4, 410000009, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.5, -4.2, -15.4, 410000009, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.5, -3.2, -15.4, 410000009, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.5, -2.2, -15.4, 410000009, math.rad(90) )
  
--instance1 end

 --instance2 begin
 
    --Door1 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -31.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -30.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -29.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -28.0, -25.0, 410000063, math.rad(90) ) 
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -31.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -30.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -29.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -28.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -31.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -30.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -29.0, -25.0, 410000063, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -28.0, -25.0, 410000063, math.rad(90) )
  -- Door2 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -35.4, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -35.4, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -35.4, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -35.4, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -37.1, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -37.1, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -37.1, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -37.1, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -38.6, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -38.6, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -38.6, 410000061, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -38.6, 410000061, math.rad(0) )  
  -- Door3 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 20.9, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 20.9, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 20.9, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 20.9, 410000077, math.rad(0) )    
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 22.4, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 22.4, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 22.4, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 22.4, 410000077, math.rad(0) )  
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 19.6, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 19.6, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 19.6, 410000077, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 19.6, 410000077, math.rad(0) )  
  
--instance2 end

 --instance3 begin
 
    --Door1 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -31.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -30.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -29.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -28.0, -25.0, 410000100, math.rad(90) ) 
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -31.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -30.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -29.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -28.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -31.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -30.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -29.0, -25.0, 410000100, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -28.0, -25.0, 410000100, math.rad(90) )
  -- Door2 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -35.4, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -35.4, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -35.4, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -35.4, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -37.1, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -37.1, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -37.1, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -37.1, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -38.6, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -38.6, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -38.6, 410000098, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -38.6, 410000098, math.rad(0) )  
  -- Door3 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 20.9, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 20.9, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 20.9, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 20.9, 410000114, math.rad(0) )    
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 22.4, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 22.4, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 22.4, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 22.4, 410000114, math.rad(0) )  
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 19.6, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 19.6, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 19.6, 410000114, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 19.6, 410000114, math.rad(0) )  
  
--instance3 end
  
 --instance4 begin
 
    --Door1 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -31.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -30.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -29.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 1.6, -28.0, -25.0, 410000137, math.rad(90) ) 
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -31.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -30.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -29.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", 0, -28.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -31.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -30.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -29.0, -25.0, 410000137, math.rad(90) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -1.6, -28.0, -25.0, 410000137, math.rad(90) )
  -- Door2 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -35.4, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -35.4, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -35.4, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -35.4, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -37.1, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -37.1, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -37.1, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -37.1, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -31.0, -38.6, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -30.0, -38.6, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -29.0, -38.6, 410000135, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -11.8, -28.0, -38.6, 410000135, math.rad(0) )  
  -- Door3 Block
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 20.9, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 20.9, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 20.9, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 20.9, 410000151, math.rad(0) )    
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 22.4, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 22.4, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 22.4, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 22.4, 410000151, math.rad(0) )  
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -55.0, 19.6, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -54.0, 19.6, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -53.0, 19.6, 410000151, math.rad(0) )
  spawnSceneObject("dungeon2", "object/tangible/dungeon/coal_bin_container.iff", -4.2, -52.0, 19.6, 410000151, math.rad(0) )  
  
--instance4 end  
  
end

function BunkerRebelChasmScreenPlay:spawnMobiles()

	--placeholder
	local pNpc = spawnMobile("dungeon2", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")
	
	--instance1 start
	
	--instance1 end



end
