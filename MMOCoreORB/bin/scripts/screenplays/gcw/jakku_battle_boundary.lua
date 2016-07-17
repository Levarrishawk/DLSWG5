
local ObjectManager = require("managers.object.object_manager")

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
  local pSpawnArea = spawnSceneObject("jakku", "object/active_area.iff", -5945, 20, 5774, 0, math.rad(0))
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(0)
          activeArea:setRadius(1000)
          createObserver(ENTEREDAREA, "jakku_battle", "notifySpawnArea", pSpawnArea)
          createObserver(EXITEDAREA, "jakku_battle", "notifySpawnAreaLeave", pSpawnArea)
      end
end
 
--checks if player enters the zone, and what to do with them.
function jakkuBattleBoundaryScreenPlay:notifySpawnArea(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (PlayerObject:isAiAgent()) then
      return 0
    end
    
    if (player:isImperial() or player:isRebel()) then
      createEvent(1, "jakku_battle", "handlePvpZone", pMovingObject)
      PlayerObject:sendSystemMessage("You have entered The Battle of Jakku.")
    else
      PlayerObject:sendSystemMessage("You have entered The Battle of Jakku.")
   --   player:teleport(jakku, -5945, 20, 5774, 0)
    end
    return 0
  end)
end

--Handles the setting of factional status
--[[
function jakkuBattleBoundaryScreenPlay:handlePvpZone(pPlayer)
  ObjectManager.withCreatureAndPlayerObject(pPlayer, function(player, playerObject)
    deleteData(player:getObjectID() .. ":changingFactionStatus")
    if (playerObject:isCovert() or playerObject:isOnLeave()) then
      playerObject:setFactionStatus(2)
    end
  end)

end
--]]


--Simply sends a system message
function jakkuBattleBoundaryScreenPlay:notifySpawnAreaLeave(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (PlayerObject:isAiAgent()) then
      return 0
    end
    
    if (player:isImperial() or player:isRebel()) then
      PlayerObject:sendSystemMessage("You are not authorized to leave the Battle Area!")
      PlayerObject:teleport(jakku, -5945, 20, 5774, 0)
    end
    return 0
  end)
end


