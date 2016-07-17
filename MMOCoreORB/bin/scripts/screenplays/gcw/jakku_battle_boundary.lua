
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
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)

    if (player:isImperial() or player:isRebel()) then
      CreatureObject(pPlayer):sendSystemMessage("You have entered The Battle of Jakku.")
    end
    return 0
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


