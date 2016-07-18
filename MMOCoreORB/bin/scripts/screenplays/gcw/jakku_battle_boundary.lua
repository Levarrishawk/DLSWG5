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
          activeArea:setRadius(1000)
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
    
    
    if (player:isNeutral()) then
      player:sendSystemMessage("You must be a member of a faction to join the Battle of Jakku!")
      player:teleport(-5945, 20, 5774, 0)
      end
    return 0    
  end)
end


function pvp:notifySpawnAreaLeave(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
 -- Could separate out by faction and deliver alternate exit points.   
    if (player:isImperial() or player:isRebel()) then
      player:sendSystemMessage("You are not authorized to leave the Jakku Battle Area!")
      player:teleport(-5945, 20, 5774, 0)
    end
    return 0
  end)
end


