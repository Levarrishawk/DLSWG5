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
	spawnMobile("dungeon2", "tps_battle_droid", 300, -21.8, -7.0, -12.1, 97, 410000011)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -16.3, -7.0, -33.0, 86, 410000021)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -27.4, -7.0, -33.0, 85, 410000021)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -22.0, -7.0, -32.7, -7, 410000021)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -22.0, -7.0, -30.1, 2, 410000021)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -22.0, -7.0, -25.5, -1, 410000014)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -22.0, -7.0, -19.7, -1, 410000014)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -21.6, -7.0, -14.3, 56, 410000011)
  spawnMobile("dungeon2", "tps_battle_droid", 300, -21.3, -7.0, -9.5, 137, 410000011)
end
