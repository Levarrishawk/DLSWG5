JakkuBoundaryScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "JakkuBoundaryScreenPlay"
}

registerScreenPlay("JakkuBoundaryScreenPlay", true)

function JakkuBoundaryScreenPlay:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function JakkuBoundaryScreenPlay:spawnSceneObjects()

	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5983, 28, 6757, 0, math.rad(123) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -2870, 21, 6678, 0, math.rad(123) )

end

function JakkuBoundaryScreenPlay:spawnMobiles()

	--Outdoors
	--local pNpc = spawnMobile("chandrila", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	--self:setMoodString(pNpc, "neutral")



end
