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
  spawnMobile("jakku", "at_xt", 60, -5764, 56, 5606, -40, 0)  
  spawnMobile("jakku", "at_xt", 60, -5755, 52, 5552, -60, 0)
  spawnMobile("jakku", "at_xt", 60, -5790, 56, 5535, -40, 0)
  spawnMobile("jakku", "at_xt", 60, -5750, 50, 5531, -60, 0)
  spawnMobile("jakku", "at_xt", 60, -5709, 46, 5531, -43, 0)
  spawnMobile("jakku", "at_xt", 60, -5725, 47, 5508, -54, 0)
  
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_extreme", 60, -5709.5, 48, 5503, -42, 0)
  spawnMobile("jakku", "fbase_rebel_heavy_trooper_extreme", 60, -5705, 48, 5507, -42, 0)
  spawnMobile("jakku", "fbase_rebel_commando_hard", 60, -5783, 58, 5549, -64, 0)
 
  local pMobile = spawnMobile("jakku", "fbase_rebel_colonel_hard", 60, -5763, 45, 5505, -116, 0)
        self:setMoodString(pMobile, "neutral")
        AiAgent(pMobile):setAiTemplate("idlewander")
  

end

