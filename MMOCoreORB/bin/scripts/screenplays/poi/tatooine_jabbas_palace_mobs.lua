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
  
    {"gamorrean_guard", 60, -8.3, 0.9, -6.2, 180, 35791444, "Gartogg","guard3"},
    
 
  },

  droid_spawns = {
    --{"r2", 60, 19.73, 0.2, 90.51, 0, 1177479, "R2-E7", "droid1"},
  --  {"eg6_power_droid", 60, 17.42, 0.2, 81.22, 0, 1177479, "EG6-M5","droid4"},
    --{"eg6_power_droid", 60, 43.29, 0.2, 7.14, 0, 1177499, "EG6-M9", "droid6"},
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

 --[[ for i,v in ipairs(self.droid_spawns) do
    pMobile = spawnMobile("tatooine", v[1], v[2], v[3], v[4], v[5], v[6], v[7])
    if (pMobile ~= nil) then
      writeData(SceneObject(pMobile):getObjectID() .. ":currentLoc", 1)
      writeStringData(SceneObject(pMobile):getObjectID() .. ":name", v[9])
      CreatureObject(pMobile):setCustomObjectName(v[8])
      createEvent(getRandomNumber(350,450) * 100, "TatooineJabbasPalaceMobsScreenPlay", "JabbaPatrol", pMobile)
      createObserver(DESTINATIONREACHED, "TatooineJabbasPalaceMobsScreenPlay", "jabbaPatrolDestReached", pMobile)
      AiAgent(pMobile):setAiTemplate("manualescortwalk")
      AiAgent(pMobile):setFollowState(4)
    end
  end --]]

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

 --[[ if (name == "guard1") then
    if (curLoc == 1) then
    nextLoc = { 6.4, .2, 130.7, 1177466 }
    else
    nextLoc = { 0.6, 5.8, 80.4, 1177469 }
    end
  end

  if (name == "guard2") then
    if (curLoc == 1) then
    nextLoc = { -22.22, 10.76, 64.30, 1177489 }
    else
    nextLoc = { 1, 5.8, 80, 1177469 }
    end
  end --]]

  if (name == "guard3") then
    if (curLoc == 1) then
    nextLoc = { -8.3, -0.9, -6.2, 35791444 }
    else
    nextLoc = { 19.6, -0.9, -7.7, 35791444 }
    end
  end
--[[
  if (name == "guard4") then
    if (curLoc == 1) then
    nextLoc = { -4.8, .2, 134.3, 1177466 }
    else
    nextLoc = { -1, 5.8, 98, 1177469 }
    end
  end

  if (name == "guard5") then
    if (curLoc == 1) then
    nextLoc = { 10, 5.8, 71, 1177470 }
    else
    nextLoc = {-25, 3, 61, 1177474}
    end
  end

  if (name == "guard6") then
    if (curLoc == 1) then
    nextLoc = {-25.9, 0.2, 82.1, 1177475}
    else
    nextLoc ={-50.89, 0.2, 82.37, 1177476}
    end
  end

  if (name == "guard7") then
    if (curLoc == 1) then
    nextLoc = {-19.74, .2, 82.23, 1177475}
    else
    nextLoc = {-2.04, .2, 82.61, 1177480}
    end
  end

  if (name == "guard8") then
    if (curLoc == 1) then
    nextLoc = {-23.73, .82, 76.52, 1177475}
    else
    nextLoc = {-13, 5, 59, 1177474}
    end
  end

  if (name == "guard9") then
    if (curLoc == 1) then
    nextLoc = {-32.17, 3, 55.89, 1177481}
    else
    nextLoc = {-37, 3, 46, 1177486}
    end
  end

  if (name == "guard10") then
    if (curLoc == 1) then
    nextLoc = {-23.78, 3.6, 53.73, 1177487}
    else
    nextLoc = {-25, 5, 34, 1177487}
    end
  end

  if (name == "guard11") then
    if (curLoc == 1) then
    nextLoc = {11.75, .2, -3.62, 1177484}
    else
    nextLoc =  {6, 4, 26, 1177487}
    end
  end

  if (name == "guard12") then
    if (curLoc == 1) then
    nextLoc = {14.12, 5.55, 66.95, 1177471}
    else
    nextLoc = {16.2, -11, 46.2, 1177502}
    end
  end

  if (name == "guard13") then
    if (curLoc == 1) then
    nextLoc = {-28.84, 8.89, 17.1, 1177485}
    else
    nextLoc = {.14, 2, 53.1, 1177487}
    end
  end --]]


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
    --nextLoc = {-25, 3, 61, 1177474}
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

  --[[ if (name == "droid1") then
    if (curLoc == 1) then
    nextLoc = {27.42, 0.2, 90.02, 1177479}
    else
    nextLoc = {19.73, 0.2, 90.51, 1177479}
    end
  end

 if (name == "droid4") then
    if (curLoc == 1) then
    nextLoc = {8.97, 0.2, 88.26, 1177479}
    else
    nextLoc = {17.42, 0.2, 81.22, 1177479}
    end
  end

  if (name == "droid6") then
    if (curLoc == 1) then
    nextLoc = {38, .2, -5.53, 1177499}
    else
    nextLoc = {43.29, .2, 7.14, 1177499}
    end
  end

  if (name == "random2") then
    if (curLoc == 1) then
    nextLoc = {-7.9, 3, 59.61, 1177474}
    else
    nextLoc = {-25, 3, 61, 1177474}
    end
  end --]]

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

  createEvent(getRandomNumber(350,450) * 100, "TatooineJabbasPalaceMobsScreenPlay", "JabbaPatrol", pMobile)

  return 0
end
