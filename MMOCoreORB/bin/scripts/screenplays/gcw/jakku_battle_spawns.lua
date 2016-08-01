local ObjectManager = require("managers.object.object_manager")

JakkuBattleScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("JakkuBattleScreenPlay", true)

function JakkuBattleScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
	end
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
  
  

end

