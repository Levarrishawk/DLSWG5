local ObjectManager = require("managers.object.object_manager")

ThePowerStationScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("ThePowerStationScreenPlay", true)

function ThePowerStationScreenPlay:start()
	if (isZoneEnabled("dungeon2")) then
		self:spawnMobiles()
	end
end

function ThePowerStationScreenPlay:spawnMobiles()
--Entrance/First Hallway
  spawnMobile("dungeon2", "tps_battle_droid", 300, -16.3, -7.0, -33.0, 86, 410000021)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -27.4, -7.0, -33.0, 85, 410000021)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -22.0, -7.0, -32.7, -7, 410000021)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -22.0, -7.0, -19.7, -1, 410000014)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -21.9, -7.0, -4.8, 178, 410000012)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -16.8, -7.0, 0.3, -85, 410000012)
  
  --"power room (big blue light place first floor)" area to the right leading to first boss
  spawnMobile("dungeon2", "tps_black_sun_guard", 300, -12.1, -7.0, 0.1, 91, 410000018)
  spawnMobile("dungeon2", "tps_black_sun_guard", 300, -5.5, -7.0, 0.1, -99, 410000018)  
  spawnMobile("dungeon2", "tps_black_sun_assassin", 300, 0.1, -7.0, -5.8, -70, 410000018)  
  spawnMobile("dungeon2", "tps_black_sun_guard", 300, 0.5, -7.0, 5.6, -118, 410000018) 
  spawnMobile("dungeon2", "tps_black_sun_assassin", 900, 6, -7.0, 0.1, 85, 410000018) 
  spawnMobile("dungeon2", "tps_black_sun_assassin", 900, 13.3, -7.0, 0.0, -93, 410000018)
  spawnMobile("dungeon2", "tps_black_sun_assassin", 900, 20.8, -7.0, 5.2, -171, 410000020)
  spawnMobile("dungeon2", "tps_black_sun_assassin", 900, 23.2, -7.0, 5.2, -171, 410000020)
  
  --Boss Fight 1
  
  
    
 local pTrigger = spawnMobile("dungeon2", "tps_battle_droid", 35, 15.0, -7.0, 16.2, 92, 410000016)
if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "ThePowerStationScreenPlay", "notifyTriggerDead", pTrigger)
end
 
writeData("ThePowerStationScreenPlay:spawnState",0)
        return 0
end
 
function ThePowerStationScreenPlay:notifyTriggerDead(pTrigger, pPlayer)
 
        local pBoss = spawnMobile("dungeon2", "tps_boss1", 0, 15.0, -7.0, 16.2, 92, 410000016)
ObjectManager.withCreatureObject(pBoss, function(oBoss)
writeData("ThePowerStationScreenPlay:spawnState", 1)
writeData("tpsboss1", oBoss:getObjectID())
spatialChat(pBoss, "Intruders!  Droids, attack!  Do not let the intruders escape!")
          createObserver(DAMAGERECEIVED,"ThePowerStationScreenPlay","boss_damage", pBoss)
createObserver(OBJECTDESTRUCTION, "ThePowerStationScreenPlay", "notifyBossDead", pBoss)
createEvent(30, "ThePowerStationScreenPlay", "despawnBoss", pBoss)
 
end)
return 0
end

function ThePowerStationScreenPlay:notifyBossDead(pBoss, pPlayer)
writeData("ThePowerStationScreenPlay:spawnState", 0)
return 0
end
 
 
function ThePowerStationScreenPlay:despawnBoss(pBoss, pPlayer)
forcePeace(pBoss)
spHelper.destroy(readData("tpsboss1"),true)
writeData("ThePowerStationScreenPlay:spawnState", 0)
return 0
end