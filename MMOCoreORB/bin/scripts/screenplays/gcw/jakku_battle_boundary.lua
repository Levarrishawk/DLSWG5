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

	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5983, 28, 6757, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5870, 21, 6678, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5763, 18, 6593, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5659, 24, 6505, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5552, 31, 6421, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5447, 35, 6335, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5341, 40, 6232, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5247, 46, 6133, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5153, 48, 6033, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -5063, 39, 5930, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -4970, 25, 5829, 0, math.rad(-57) )
	spawnSceneObject("jakku", "object/static/terrain/tatooine/rock_spire_fin_tatooine.iff", -4945, 22, 5804, 0, math.rad(-57) )

end

function JakkuBoundaryScreenPlay:spawnMobiles()

	--Outdoors
	--local pNpc = spawnMobile("chandrila", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	--self:setMoodString(pNpc, "neutral")



end
