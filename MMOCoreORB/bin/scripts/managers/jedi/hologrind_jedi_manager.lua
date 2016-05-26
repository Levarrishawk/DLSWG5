JediManager = require("managers.jedi.jedi_manager")
local ObjectManager = require("managers.object.object_manager")

jediManagerName = "HologrindJediManager"

NUMBEROFPROFESSIONSTOMASTER = 6
MAXIMUMNUMBEROFPROFESSIONSTOSHOWWITHHOLOCRON = NUMBEROFPROFESSIONSTOMASTER - 2

HologrindJediManager = JediManager:new {
  screenplayName = jediManagerName,
  jediManagerName = jediManagerName,
  jediProgressionType = HOLOGRINDJEDIPROGRESSION,
  startingEvent = nil,
}

-- Return a list of all professions and their badge number that are available for the hologrind
-- @return a list of professions and their badge numbers.

--[[
function HologrindJediManager:getGrindableProfessionList()
  local grindableProfessions = {
    -- String Id, badge number, profession name
    --{ "pilot_rebel_navy_corellia",  PILOT_REBEL_NAVY_CORELLIA },
    --{ "pilot_imperial_navy_corellia",   PILOT_IMPERIAL_NAVY_CORELLIA },
    --{ "pilot_neutral_corellia",     PILOT_CORELLIA },
    --{ "pilot_rebel_navy_tatooine",  PILOT_REBEL_NAVY_TATOOINE },
    --{ "pilot_imperial_navy_naboo",  PILOT_IMPERIAL_NAVY_NABOO },
  
    { "jedi_pad_novice",    JEDI_PAD_NOVICE  },
    --{ "pilot_rebel_navy_naboo",     PILOT_REBEL_NAVY_NABOO }
  }
  return grindableProfessions
end

--]]

-- Handling of the onPlayerCreated event.
-- Hologrind professions will be generated for the player.
-- @param pCreatureObject pointer to the creature object of the created player.


function HologrindJediManager:onPlayerCreated(pCreatureObject)

  ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
    playerObject:setJediState(2)
--  local skillList = self:getGrindableProfessionList()
--  ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
--    for i = 1, NUMBEROFPROFESSIONSTOMASTER, 1 do
--      local numberOfSkillsInList = table.getn(skillList)
--      local skillNumber = getRandomNumber(1, numberOfSkillsInList)
--      playerObject:addHologrindProfession(skillList[skillNumber][2])
--      table.remove(skillList, skillNumber)
--    end
  end)
end

-- Check and count the number of mastered hologrind professions.
-- @param pCreatureObject pointer to the creature object of the player which should get its number of mastered professions counted.
-- @return the number of mastered hologrind professions.

--[[


function HologrindJediManager:getNumberOfMasteredProfessions(pCreatureObject)
  return ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
    local professions = playerObject:getHologrindProfessions()
    local masteredNumberOfProfessions = 0
    for i = 1, table.getn(professions), 1 do
      if playerObject:hasBadge(professions[i]) then
        masteredNumberOfProfessions = masteredNumberOfProfessions + 1
      end
    end
    return masteredNumberOfProfessions
  end)
end

-- Check if the player is jedi.
-- @param pCreatureObject pointer to the creature object of the player to check if he is jedi.
-- @return returns if the player is jedi or not.
function HologrindJediManager:isJedi(pCreatureObject)
  return ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
    return playerObject:isJedi()
  end)
end

-- Sui window ok pressed callback function.
function HologrindJediManager:notifyOkPressed()
  -- Do nothing.
end

-- Send a sui window to the player about unlocking jedi and award jedi status and force sensitive skill.
-- @param pCreatureObject pointer to the creature object of the player who unlocked jedi.
function HologrindJediManager:sendSuiWindow(pCreatureObject)
  local suiManager = LuaSuiManager()
  suiManager:sendMessageBox(pCreatureObject, pCreatureObject, "@quest/force_sensitive/intro:force_sensitive", "Perhaps you should meditate somewhere alone...", "@ok", "HologrindJediManager", "notifyOkPressed")
end

-- Award skill and jedi status to the player.
-- @param pCreatureObject pointer to the creature object of the player who unlocked jedi.
function HologrindJediManager:awardJediStatusAndSkill(pCreatureObject)
  ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
    playerObject:setJediState(2)
  end)
end

-- Check if the player has mastered all hologrind professions and send sui window and award skills.
-- @param pCreatureObject pointer to the creature object of the player to check the jedi progression on.
function HologrindJediManager:checkIfProgressedToJedi(pCreatureObject)
  if self:getNumberOfMasteredProfessions(pCreatureObject) >= NUMBEROFPROFESSIONSTOMASTER and not self:isJedi(pCreatureObject) then
    self:sendSuiWindow(pCreatureObject)
    self:awardJediStatusAndSkill(pCreatureObject)
  end
end

-- Event handler for the BADGEAWARDED event.
-- @param pCreatureObject pointer to the creature object of the player who was awarded with a badge.
-- @param pCreatureObject2 pointer to the creature object of the player who was awarded with a badge.
-- @param badgeNumber the badge number that was awarded.
-- @return 0 to keep the observer active.
function HologrindJediManager:badgeAwardedEventHandler(pCreatureObject, pCreatureObject2, badgeNumber)
  if (pCreatureObject == nil) then
    return 0
  end

  self:checkIfProgressedToJedi(pCreatureObject)

  return 0
end

-- Register observer on the player for observing badge awards.
-- @param pCreatureObject pointer to the creature object of the player to register observers on.
function HologrindJediManager:registerObservers(pCreatureObject)
  createObserver(BADGEAWARDED, "HologrindJediManager", "badgeAwardedEventHandler", pCreatureObject)
end

-- Handling of the onPlayerLoggedIn event. The progression of the player will be checked and observers will be registered.
-- @param pCreatureObject pointer to the creature object of the player who logged in.
function HologrindJediManager:onPlayerLoggedIn(pCreatureObject)
  if (pCreatureObject == nil) then
    return
  end

  self:checkIfProgressedToJedi(pCreatureObject)
  self:registerObservers(pCreatureObject)
end

-- Get the profession name from the badge number.
-- @param badgeNumber the badge number to find the profession name for.
-- @return the profession name associated with the badge number, Unknown profession returned if the badge number isn't found.
function HologrindJediManager:getProfessionStringIdFromBadgeNumber(badgeNumber)
  local skillList = self:getGrindableProfessionList()
  for i = 1, table.getn(skillList), 1 do
    if skillList[i][2] == badgeNumber then
      return skillList[i][1]
    end
  end
  return "Unknown profession"
end

-- Find out and send the response from the holocron to the player
-- @param pCreatureObject pointer to the creature object of the player who used the holocron.
function HologrindJediManager:sendHolocronMessage(pCreatureObject)
  if self:getNumberOfMasteredProfessions(pCreatureObject) >= MAXIMUMNUMBEROFPROFESSIONSTOSHOWWITHHOLOCRON then
    -- The Holocron is quiet. The ancients' knowledge of the Force will no longer assist you on your journey. You must continue seeking on your own.
    CreatureObject(pCreatureObject):sendSystemMessage("@jedi_spam:holocron_quiet")
    return true
  else
    ObjectManager.withCreatureAndPlayerObject(pCreatureObject, function(creatureObject, playerObject)
      local professions = playerObject:getHologrindProfessions()
      for i = 1, table.getn(professions), 1 do
        if not playerObject:hasBadge(professions[i]) then
          local professionText = self:getProfessionStringIdFromBadgeNumber(professions[i])
          creatureObject:sendSystemMessageWithTO("@jedi_spam:holocron_light_information", "@skl_n:" .. professionText)
        end
      end
    end)
    return false
  end
end

-- Handling of the useItem event.
-- @param pSceneObject pointer to the item object.
-- @param itemType the type of item that is used.
-- @param pCreatureObject pointer to the creature object that used the item.
function HologrindJediManager:useItem(pSceneObject, itemType, pCreatureObject)
  if (pCreatureObject == nil or pSceneObject == nil) then
    return
  end

  if itemType == ITEMHOLOCRON then
    local isSilent = self:sendHolocronMessage(pCreatureObject)
    if isSilent then
      return
    else
      SceneObject(pSceneObject):destroyObjectFromWorld()
      SceneObject(pSceneObject):destroyObjectFromDatabase()
    end
  end
end
--]]

registerScreenPlay("HologrindJediManager", true)

return HologrindJediManager