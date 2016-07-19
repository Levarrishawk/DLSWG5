local ObjectManager = require("managers.object.object_manager")

JakkuBattleScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("JakkuBattleScreenPlay", true)

function ThePowerStationScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
	end
end

function JakkuBattleScreenPlay:spawnMobiles()
--gladiator arena
  spawnMobile("jakku", "punishment_acklay", 1, 4454, 7.0, -5171, -84, 0)

  

end

