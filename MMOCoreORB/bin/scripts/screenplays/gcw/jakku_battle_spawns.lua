local ObjectManager = require("managers.object.object_manager")

JakkuBattleScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	turrets = {
    { template = "object/installation/turret/turret_tower_large.iff", x = -5767.9, z = 55.5, y = 5575.1 },
    { template = "object/installation/turret/turret_tower_large.iff", x = -5809.5, z = 55, y = 5513.6 },
    { template = "object/installation/turret/turret_tower_large.iff", x = -5778.3, z = 53, y = 5443.3 },
    { template = "object/installation/turret/turret_tower_large.iff", x = -5691.4, z = 44, y = 5599.2 },
    { template = "object/installation/turret/turret_tower_large.iff", x = -5629.3, z = 41, y = 5550.7 },
    { template = "object/installation/turret/turret_tower_large.iff", x = -5737.9, z = 50, y = 5620.0 },
  },

}

registerScreenPlay("JakkuBattleScreenPlay", true)

function JakkuBattleScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function JakkuBattleScreenPlay:spawnSceneObjects()
  for i = 1, 6, 1 do
    local turretData = self.turrets[i]
    local pTurret = spawnSceneObject("jakku", turretData.template, turretData.x, turretData.z, turretData.y, 0, 0.707107, 0, 0.707107, 0)

    if pTurret ~= nil then
      local turret = TangibleObject(pTurret)
      turret:setFaction(FACTIONREBEL)
      turret:setPvpStatusBitmask(1)
    end

    writeData(SceneObject(pTurret):getObjectID() .. ":rebel_hideout:turret_index", i)
    createObserver(OBJECTDESTRUCTION, "JakkuBattleScreenPlay", "notifyTurretDestroyed", pTurret)
  end
  
end

function JakkuBattleScreenPlay:notifyTurretDestroyed(pTurret, pPlayer)
  ObjectManager.withSceneObject(pTurret, function(turret)
    local turretData = self.turrets[readData(turret:getObjectID() .. ":rebel_hideout:turret_index")]
    turret:destroyObjectFromWorld()
    createEvent(1800000, "JakkuBattleScreenPlay", "respawnTurret", pTurret, "")
  end)
  CreatureObject(pPlayer):clearCombatState(1)
  return 0
end

function JakkuBattleScreenPlay:respawnTurret(pTurret)
  if pTurret == nil then return end

  TangibleObject(pTurret):setConditionDamage(0, false)
  local turretData = self.turrets[readData(SceneObject(pTurret):getObjectID() .. ":rebel_hideout:turret_index")]
  local pZone = getZoneByName("jakku")

  if pZone == nil then return end

  SceneObject(pZone):transferObject(pTurret, -1, true)
end

function JakkuBattleScreenPlay:spawnMobiles()
--gladiator arena
  spawnMobile("jakku", "punishment_acklay", 1, 4454, 7.0, -5171, -84, 0)
  
--  START:  PvP Zone
  -- Republic Encampment (exterior)
  local pMobile = spawnMobile("jakku", "at_xt", 60, -5763, 45, 5505, -116, 0)
        self:setMoodString(pMobile, "neutral")
        AiAgent(pMobile):setAiTemplate("idlewander")
        
  pMobile = spawnMobile("jakku", "at_xt", 60, -5764, 56, 5606, -40, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5755, 52, 5552, -60, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5790, 56, 5535, -40, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5750, 50, 5531, -60, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5709, 46, 5531, -43, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5725, 47, 5508, -54, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5715, 47, 5622, 13, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5660, 42, 5579, 39, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5591, 39.5, 5540, 24, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5746, 48.8, 5394, -95, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_xt", 60, -5827.6, 54.4, 5493.1, -88, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_extreme", 60, -5709.5, 48, 5503, -42, 0)
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_extreme", 60, -5705, 48, 5507, -42, 0)
  spawnMobile("jakku", "fbase_rebel_commando_hard", 60, -5783, 58, 5549, -64, 0)
  
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5826, 56.3, 5501, -50, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5800, 55.8, 5530, -50, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5787.7, 54.7, 5544.8, -65, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5791.2, 55, 5555.6, -65, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5778, 56, 5567.7, -78, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5769, 56, 5588.5, -73, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5748.6, 54.1, 5621.7, -11, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5729.5, 50.1, 5625.1, 20, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5703.8, 45.2, 5615.5, 24, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5671.9, 42.3, 5593.6, 27, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5644.3, 41.3, 5567.9, 29, 0)
  spawnMobile("jakku", "fbase_rebel_soldier_hard", 60, -5606.3, 39.3, 5557.3, 39, 0)
  
   -- Imperial Encampment (exterior) 
   
  pMobile = spawnMobile("jakku", "at_at", 60, -5928.6, 41.9, 6110.3, -177, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_at", 60, -6051.5, 38.1, 6118.2, -172, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_at", 60, -5990.3, 36.0, 6189.2, -172, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -6177.5, 54.5, 6134.8, -136, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -6154.6, 52.1, 6094.1, -136, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -6115.1, 53.3, 6047.7, -156, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -6057.8, 54.6, 6008.1, -154, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -5990.7, 50.4, 5984.9, 172, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -5917.2, 53.6, 5988.7, 158, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -5848.6, 54.7, 6020.6, 141, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  pMobile = spawnMobile("jakku", "at_st", 60, -5792.2, 52.5, 6087.9, 111, 0)
  self:setMoodString(pMobile, "neutral")
  AiAgent(pMobile):setAiTemplate("idlewander")
  
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -6044, 56.6, 6013, -150, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -6065, 56.4, 6022, -152, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -6003.4, 55.6, 5999, -154, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5994.4, 56.1, 5996.4, 177, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5984.7, 56.7, 5999.4, 159, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5974.3, 56.1, 5999.5, 176, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5931.7, 56.5, 6002.0, 173, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5918.5, 55.9, 6001.7, 143, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5906, 54.4, 6007.1, 150, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5871.1, 53.4, 6024, 160, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5861.3, 55, 6027.6, 140, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5848.2, 52.9, 6035.9, 119, 0)
  spawnMobile("jakku", "fbase_stormtrooper_hard", 60, -5817.9, 56.0, 6076.8, 131, 0)
  
  spawnMobile("jakku", "fbase_stormtrooper_extreme", 60, -5994.4, 35.7, 6135.6, 2, 0)
  spawnMobile("jakku", "fbase_stormtrooper_extreme", 60, -5988.7, 35.8, 6135.6, 2, 0)
  
 -- Front Lines (npc)
    --imperial lines
    
  spawnMobile("jakku", "at_st", 120, -5913.8, 30.4, 5851.2, 149, 0)
    
  spawnMobile("jakku", "stormtrooper", 45, -5913.8, 30.4, 5851.2, 159, 0) 
  spawnMobile("jakku", "stormtrooper", 45, -5917.1, 30.4, 5849.5, 147, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5909.5, 30.0, 5851.7, 150, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5920.6, 30.4, 5847.6, 145, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5905.5, 29.7, 5852.8, 169, 0)
  
  spawnMobile("jakku", "at_st", 120, -5969.4, 27.5, 5834.8, 143, 0)
  
  spawnMobile("jakku", "at_at", 300, -5936.2, 27.6, 5840.1, 164, 0)
  
  spawnMobile("jakku", "stormtrooper", 45, -5818.4, 40.9, 5853.9, -140, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5823.8, 40.4, 5858.2, -136, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5828.4, 40.1, 5862.4, -135, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5831.8, 40.0, 5866.5, -138, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5837.9, 40.0, 5874.1, -128, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5845.5, 39.6, 5880.7, -142, 0)
  spawnMobile("jakku", "stormtrooper_squad_leader", 45, -5834.8, 39.9, 5870.0, -124, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5813.4, 41.3, 5851.0, -139, 0)
  spawnMobile("jakku", "stormtrooper", 45, -5808.0, 42.2, 5849.7, -138, 0)
  
  spawnMobile("jakku", "at_at", 300, -5959.4, 32.4, 5585.9, 154, 0)
  
    -- republic lines
    
  spawnMobile("jakku", "at_xt", 120, -5905, 29.6, 5829.3, -9, 0)
  spawnMobile("jakku", "at_xt", 120, -5935, 25.4, 5820.3, -19, 0)
  spawnMobile("jakku", "at_xt", 120, -5928, 25.5, 5821.3, -38, 0)
    
  spawnMobile("jakku", "rebel_trooper", 45, -5905, 29.6, 5829.3, -31, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5908.0, 29.2, 5828.0, -22, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5902.0, 29.0, 5831.0, -14, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5899.2, 28.4, 5833.5, -33, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5912.2, 27.8, 5825.6, -27, 0)
  
  spawnMobile("jakku", "rebel_commando", 35, -5958.0, 26.6, 5819.1, -27, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5954.0, 26.3, 5822.1, -27, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5954.0, 26.2, 5819.6, -13, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5953.0, 26.5, 5829.6, -13, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5967.0, 26.0, 5820.6, -23, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5972.0, 25.6, 5821.2, -13, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5964.5, 25.8, 5816.8, -37, 0)
  spawnMobile("jakku", "rebel_commando", 35, -5949.0, 26.0, 5820.9, -38, 0)
  
  spawnMobile("jakku", "rebel_trooper", 45, -5818.1, 35.4, 5832.0, 36, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5824.7, 34.6, 5837.0, 36, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5829.0, 34.5, 5842.0, 44, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5834.0, 33.8, 5845.0, 41, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5838.2, 34.0, 5849.7, 44, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5842.0, 34.5, 5852.0, 44, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5849.0, 33.1, 5857.7, 44, 0)
  spawnMobile("jakku", "rebel_trooper", 45, -5857.0, 33.2, 5863.9, 44, 0)
  
  spawnMobile("jakku", "at_xt", 120, -5955, 44.6, 5546.8, -33, 0)
  spawnMobile("jakku", "at_xt", 120, -5930, 41.6, 5563.0, -25, 0)  
  


  

end

