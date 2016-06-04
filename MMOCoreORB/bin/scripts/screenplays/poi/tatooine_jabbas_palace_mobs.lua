local ObjectManager = require("managers.object.object_manager")
TatooineJabbasPalaceMobsScreenPlay = ScreenPlay:new {
  numberOfActs = 1,

  bomar_monks = {
    {"bomarr_monk", 60, -24, 6.6, 86, 180, 1177490,"Bomarr Monk","bmonk1"},
    {"bomarr_monk", 60, -2, 4, 104, 85, 1177467,"Bomarr Monk","bmonk2"},
    {"bomarr_monk", 60, -18, 9, 73, 196, 1177489,"Bomarr Monk","bmonk3"},
    {"bomarr_monk", 60, 7, 6, 50, 64, 1177487,"Bomarr Monk","bmonk4"},
    {"bomarr_monk", 60, 24, .2, -9, 180, 1177484,"Bomarr Monk","bmonk5"},
    {"bomarr_monk", 60, -18, 7, 9, 207, 1177501,"Bomarr Monk","bmonk6"},
  },

  gamorrean_guards = {
  
    {"gamorrean_guard", 60, -8.3, 0.9, -6.2, 180, 35791444, "Gartogg","guard1"},
    
  },


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


  for i,v in ipairs(self.bomar_monks) do
    pMobile = spawnMobile("tatooine", v[1], v[2], v[3], v[4], v[5], v[6], v[7])
    if (pMobile ~= nil) then
      writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
      writeStringData(SceneObject(pMobile):getObjectID() .. ":name", v[9])
      CreatureObject(pMobile):setCustomObjectName(v[8])
      createEvent(getRandomNumber(250,450) * 100, "TatooineJabbasPalaceMobsScreenPlay", "JabbaPatrol", pMobile)
      createObserver(DESTINATIONREACHED, "TatooineJabbasPalaceMobsScreenPlay", "jabbaPatrolDestReached", pMobile)
      AiAgent(pMobile):setAiTemplate("manualescortwalk")
      AiAgent(pMobile):setFollowState(4)
    end
  end

  for i,v in ipairs(self.gamorrean_guards) do
    pMobile = spawnMobile("chandrila", v[1], v[2], v[3], v[4], v[5], v[6], v[7])
    if (pMobile ~= nil) then
      writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
      writeStringData(SceneObject(pMobile):getObjectID() .. ":name", v[9])
      CreatureObject(pMobile):setCustomObjectName(v[8])
      createEvent(getRandomNumber(250,450) * 100, "TatooineJabbasPalaceMobsScreenPlay", "JabbaPatrol", pMobile)
      createObserver(DESTINATIONREACHED, "TatooineJabbasPalaceMobsScreenPlay", "jabbaPatrolDestReached", pMobile)
      AiAgent(pMobile):setAiTemplate("manualescortwalk")
      AiAgent(pMobile):setFollowState(4)
    end
  end


end

function TatooineJabbasPalaceMobsScreenPlay:palaceConverseJawa(pMobile)
  if AiAgent(pMobile):isInCombat() or CreatureObject(pMobile):isDead() then
    return 0
  end
    local int = getRandomNumber(1,4)
    if int == 1 then action = "explain" end
    if int == 2 then action = "bow" end
    if int == 3 then action = "yes" end
    if int == 4 then action = "shrug_hands" end
    CreatureObject(pMobile):doAnimation(action)
    createEvent(getRandomNumber(40,70) * 100, "TatooineJabbasPalaceMobsScreenPlay", "palaceConverseJawa", pMobile)
    return 0
end


function TatooineJabbasPalaceMobsScreenPlay:palaceConverse(pMobile)
  if AiAgent(pMobile):isInCombat() or CreatureObject(pMobile):isDead() then
    return 0
  end
    local int = getRandomNumber(1,12)
    if int == 1 then action = "check_wrist_device" end
    if int == 2 then action = "angry" end
    if int == 3 then action = "cover_mouth" end
    if int == 4 then action = "dismiss" end
    if int == 5 then action = "duck" end
    if int == 6 then action = "embarrassed" end
    if int == 7 then action = "explain" end
    if int == 8 then action = "get_hit_light" end
    if int == 9 then action = "laugh_titter" end
    if int == 10 then action = "nod_head_once" end
    if int == 11 then action = "scratch_head" end
    if int == 12 then action = "shrug_hands" end
    CreatureObject(pMobile):doAnimation(action)
    createEvent(getRandomNumber(40,70) * 100, "TatooineJabbasPalaceMobsScreenPlay", "palaceConverse", pMobile)
    return 0
end



function TatooineJabbasPalaceMobsScreenPlay:JabbaPatrol(pMobile)
  if (pMobile == nil) then
    return
  end
  local name = readStringData(SceneObject(pMobile):getObjectID() .. ":name")
  local curLoc = readData(SceneObject(pMobile):getObjectID() .. ":currentLoc")
  local nextLoc


  if (name == "guard1") then
    if (curLoc == 1) then
    nextLoc = { -8.3, -0.9, -6.2, 35791444 }
    else
    nextLoc = { 19.6, -0.9, -7.7, 35791444 }
    end
  end

  if (name == "bmonk1") then
    if (curLoc == 1) then
    nextLoc = {-24, 6.6, 86, 1177490}
    else
    nextLoc = {-8.94, 3, 55.95, 1177474}
    end
  end
  if (name == "bmonk2") then
    if (curLoc == 1) then
    nextLoc = {8.6, 5.8, 95.2, 1177468}
    else
    nextLoc = {-2, .2, 104, 1177467}
    end
  end
  if (name == "bmonk3") then
    if (curLoc == 1) then
    nextLoc = {21, -11, 45.1, 1177502}
    else
    nextLoc =  {-18, 5.8, 73, 1177489}
    end
  end
  if (name == "bmonk4") then
    if (curLoc == 1) then
    nextLoc = {19.2, 10, 1.5, 1177500}
    else
    nextLoc = {7, 6, 50, 1177487}
    end
  end
  if (name == "bmonk5") then
    if (curLoc == 1) then
    nextLoc = {5.8, 5.8, 60.53, 1177470}
    else
    nextLoc = {24, .2, -9, 1177484}
    end
  end

  if (name == "bmonk6") then
    if (curLoc == 1) then
    nextLoc = {-18, 7, 9, 1177501}
    else
    nextLoc = {24, .2, -9, 1177484}
    end
  end



  AiAgent(pMobile):stopWaiting()
  AiAgent(pMobile):setWait(0)
  AiAgent(pMobile):setNextPosition(nextLoc[1], nextLoc[2], nextLoc[3], nextLoc[4])
  AiAgent(pMobile):executeBehavior()
end

function TatooineJabbasPalaceMobsScreenPlay:jabbaPatrolDestReached(pMobile)
  if (pMobile == nil) then
    return 0
  end

  local curLoc = readData(SceneObject(pMobile):getObjectID() .. ":currentLoc")

  if (curLoc == 1) then
    writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 2)
  else
    writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
  end

  createEvent(getRandomNumber(250,450) * 100, "TatooineJabbasPalaceMobsScreenPlay", "JabbaPatrol", pMobile)

  return 0
end
