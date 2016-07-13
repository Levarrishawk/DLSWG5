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
	spawnMobile("dungeon2", "tps_battle_droid", 300, -22.4, -7.0, -16.5, 97, 410000011)
	spawnMobile("dungeon2", "tps_battle_droid", 300, -21.8, -7.0, -12.1, 97, 410000014)
	spawnMobile("dungeon2", "tps_battle_droid", 300, -21.8, -7.0, -28.1, 97, 410000014)
	spawnMobile("dungeon2", "tps_battle_droid", 300, -21.8, -7.0, -33.6, 97, 410000014)
	spawnMobile("dungeon2", "tps_battle_droid", 300, -22.1, -7.0, -5.1, 97, 410000012)
	spawnMobile("dungeon2", "tps_battle_droid", 300, -21.8, -7.0, -1.1, 97, 410000012)
	spawnMobile("dungeon2", "tps_battle_droid", 300, -16, -7.0, -0, 97, 410000012)
	spawnMobile("dungeon2", "tps_battle_droid", 300, -15.9, -7.0, -33.2, 97, 410000021)
	spawnMobile("dungeon2", "tps_battle_droid", 300, -28.4, -7.0, -32.8, 90, 410000021)

end
