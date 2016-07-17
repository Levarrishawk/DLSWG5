local ObjectManager = require("managers.object.object_manager")

pvp = ScreenPlay:new {
  numberOfActs = 1,
    questString = "pvp",
    states = {onleave = 1, overt = 2},
    questdata = Object:new {
      activePlayerName = "initial",
      }
}
  
registerScreenPlay("pvp", true)
  
function pvp:start()
      self:spawnActiveAreas()
end
  
function pvp:spawnActiveAreas()
  local pSpawnArea = spawnSceneObject("jakku", "object/active_area.iff", -5945, 20, 5774, 0, 0, 0, 0, 0)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(100)
          createObserver(ENTEREDAREA, "pvp", "notifySpawnArea", pSpawnArea)
          createObserver(EXITEDAREA, "pvp", "notifySpawnAreaLeave", pSpawnArea)
      end
end
 
--checks if player enters the zone, and what to do with them.
function pvp:notifySpawnArea(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if (player:isImperial() or player:isRebel()) then     
      player:sendSystemMessage("You have entered the Battle of Jakku!")
    end
    return 0
  end)
end

--Handles the setting of factional status
--[[
function pvp:handlePvpZone(pPlayer)
  ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
    deleteData(player:getObjectID() .. ":changingFactionStatus")
    if (playerObject:isCovert() or playerObject:isOnLeave()) then
      playerObject:setFactionStatus(2)
    end
  end)

end
--]]

--Simply sends a system message
function pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if (player:isImperial() or player:isRebel()) then
      player:sendSystemMessage("You are not authorized to leave the Jakku Battle Area!")
      player:teleport(-5945, 20, 5774, 0)
    end
    return 0
  end)
end


--[[local ObjectManager = require("managers.object.object_manager")

jakkuBattleBoundaryScreenPlay = ScreenPlay:new {
  numberOfActs = 1,
    questString = "jakku_battle",
    states = {onleave = 1, overt = 2},
    questdata = Object:new {
      activePlayerName = "initial",
      }
}
  
registerScreenPlay("jakkuBattleBoundaryScreenPlay", true)
  
function jakkuBattleBoundaryScreenPlay:start()
      self:spawnActiveAreas()
end
  
function jakkuBattleBoundaryScreenPlay:spawnActiveAreas()
  local pActiveArea = spawnActiveArea("jakku", "object/active_area.iff", -5945, 20, 5774, 0, 0)
    
  if (pActiveArea ~= nil) then
    local activeArea = LuaActiveArea(pActiveArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(1000)
          createObserver(ENTEREDAREA, "jakku_battle", "notifySpawnArea", pActiveArea)
          createObserver(EXITEDAREA, "jakku_battle", "notifySpawnAreaLeave", pActiveArea)
      end
end
 
--checks if player enters the zone, and what to do with them.
function jakkuBattleBoundaryScreenPlay:notifySpawnArea(pActiveArea, pMovingObject)
  
  if (pMovingObject == nil or pActiveArea == nil or not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end

  if (CreatureObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
    return 0
  end
 
  return ObjectManager.withCreatureObject(pMovingObject, function(player)

      CreatureObject(pPlayer):sendSystemMessage("You have entered The Battle of Jakku.")
    
  end)
end

function jakkuBattleBoundaryScreenPlay:notifySpawnAreaLeave(pActiveArea, pMovingObject)
  
  if (pMovingObject == nil or pActiveArea == nil or not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (CreatureObject:isAiAgent()) then
      return 0
    end
    
    if (player:isImperial() or player:isRebel()) then
      CreatureObject(pPlayer):sendSystemMessage("You are not authorized to leave the Battle Area!")
      CreatureObject(pPlayer):teleport(jakku, -5945, 20, 5774, 0)
    end
    return 0
  end)
end
--]]

