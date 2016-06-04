local ObjectManager = require("managers.object.object_manager")
TatooineJabbasPalaceMobsScreenPlay = ScreenPlay:new {
  numberOfActs = 1,



  jabba_band = {
    {"sy_snootles", 60, 23, -0.9, 9.7, -135, 35791444, "Sy Snootles", "themepark_sy_snootles"},
    {"max_rebo", 60, 25.4, -0.9, 10.7, -135, 35791444, "Max Rebo","themepark_music_3"},
    {"droopy_mccool", 60, 25.7, -0.9, 7.7, -135, 35791444, "Droopy McCool","themepark_music_3"},
  },

}

registerScreenPlay("TatooineJabbasPalaceMobsScreenPlay", true)

function TatooineJabbasPalaceMobsScreenPlay:start()
  if (isZoneEnabled("chandrila")) then
    spawnSceneObject("chandrila","object/tangible/instrument/organ_max_rebo.iff", 25.4, -0.9, 10.7, 35791444, 0.38,0,-0.92,0)    --spawnSceneObject("tatooine", "object/tangible/instrument/instrument_organ_max_rebo.iff", -11.1, 2, 36.2, 1177487, 0.9974847113288691, 0, -0.07088194879630508, 0)
    self:spawnMobiles()
    self:spawnStatics()
  end
end

function TatooineJabbasPalaceMobsScreenPlay:spawnStatics()
  spawnMobile("chandrila", "jabba_the_hutt",60,4.2,-0.9,-12.0,14,35791444)

end


function TatooineJabbasPalaceMobsScreenPlay:spawnMobiles()

  for i,v in ipairs(self.jabba_band) do
    local pMobile = spawnMobile("chandrila", v[1], v[2], v[3], v[4], v[5], v[6], v[7])
    if (pMobile ~= nil) then
    CreatureObject(pMobile):setCustomObjectName(v[8])
    CreatureObject(pMobile):setMoodString(pMobile, v[9])
    end
  end


 
end 
