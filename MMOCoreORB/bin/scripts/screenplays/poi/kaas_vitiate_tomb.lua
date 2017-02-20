local ObjectManager = require("managers.object.object_manager")

KaasVitiateScreenPlay = ScreenPlay:new {
	numberOfActs = 1;
}

registerScreenPlay("KaasVitiateScreenPlay", true)

function KaasVitiateScreenPlay:start()
	self:spawnMobiles()
	self:spawnActiveArea1()
end

function KaasVitiateScreenPlay:spawnActiveArea1()
  local pSpawnArea = spawnSceneObject("kaas", "object/active_area.iff", 5896.9, 81, -1137.0, 0, 36000090)
    
  if (pSpawnArea ~= nil) then
    local activeArea = LuaActiveArea(pSpawnArea)
          activeArea:setCellObjectID(36000090)
          activeArea:setRadius(512)
          createObserver(ENTEREDAREA, "KaasVitiateScreenPlay", "notifySpawnArea", pSpawnArea)
          --createObserver(EXITEDAREA, "KaasVitiateScreenPlay", "notifySpawnAreaLeave", pSpawnArea)
      end
end

function KaasVitiateScreenPlay:notifySpawnArea(pActiveArea, pMovingObject)
  
  if (not SceneObject(pMovingObject):isCreatureObject()) then
    return 0
  end
  
  return ObjectManager.withCreatureObject(pMovingObject, function(player)
    if (player:isAiAgent()) then
      return 0
    end
    
    if (player:isImperial() or player:isRebel()or player:isNeutral()) then
      player:sendSystemMessage("Your intrusion into the tomb has awoken spirits of ancient Sith!")
      local pMob1 = spawnMobile("kaas", "sith_ghost", 0, 2.2, 0.0, 0.3, 0, 36000090)
      ObjectManager.withCreatureObject(pMob1, function(firstTime)
      firstTime:engageCombat(player)end)
    
      local pMob2 = spawnMobile("kaas", "sith_ghost", 0, -2.8, 0.0, -6.8, 0, 36000090)
      ObjectManager.withCreatureObject(pMob2, function(secondTime)
      secondTime:engageCombat(player)end)
      end
    return 0    
  end)
end

function KaasVitiateScreenPlay:spawnMobiles()
-- Entrance




	spawnMobile("kaas", "sith_ghost", 200, -10.9, 0.0, -2.4, 179, 36000092) 
	spawnMobile("kaas", "sith_ghost", 200, -19.4, 0.0, -2.5, 90, 36000092)  
	spawnMobile("kaas", "sith_ghost", 200, -19.5, 0.0, -23.3, 0, 36000094) 
	spawnMobile("kaas", "sith_ghost", 200, -8.5, 0.0, -24.4, -90, 36000094)
	spawnMobile("kaas", "sith_ghost", 200, -8.5, 0.0, -22.0, -90, 36000094)
	
	spawnMobile("kaas", "sith_ghost", 200, -0.3, -0.0, -32.2, 0, 36000095) 
	spawnMobile("kaas", "sith_ghost", 200, 2.1, 0.0, -43.1, 0, 36000095) 
	spawnMobile("kaas", "sith_ghost", 200, -0.2, 0.0, -40.0, 179, 36000095) 
	spawnMobile("kaas", "sith_ghost", 200, -4.1, 0.0, -43.4, 90, 36000095) 
--	spawnMobile("kaas", "sith_ghost", 200, -13.0, -6.0, -20.0, 90, 36000095)
	
	spawnMobile("kaas", "sith_ghost", 200, -12.6, -4.0, -35.7, 179, 36000096)
	spawnMobile("kaas", "sith_ghost", 200, 0.7, -6.0, -29.9, 179, 36000097)
	spawnMobile("kaas", "sith_ghost", 200, 15.0, -6.0, -18.8, -90, 36000097)
	spawnMobile("kaas", "sith_ghost", 200, 23.4, -6.5, -6.3, -45, 36000098)
	spawnMobile("kaas", "sith_ghost", 200, -22.7, -6.5, -6.5, 45, 36000099)
	spawnMobile("kaas", "sith_ghost", 200, -2.8, -6.4, -4.1, -90, 36000100)
	spawnMobile("kaas", "sith_ghost", 200, -6.1, -6.4, -1.6, 179, 36000100)
	spawnMobile("kaas", "sith_ghost", 200, -10.0, -6.4, -4.1, 90, 36000100)
	spawnMobile("kaas", "sith_ghost", 200, 8.9, -6.4, -3.9, 179, 36000101)
	spawnMobile("kaas", "sith_ghost", 200, 4.8, -6.4, -4.0, 179, 36000101)
	
	
	

   end
