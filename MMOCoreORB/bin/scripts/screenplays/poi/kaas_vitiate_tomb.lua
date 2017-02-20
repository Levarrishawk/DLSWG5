local ObjectManager = require("managers.object.object_manager")

KaasVitiateScreenPlay = ScreenPlay:new {
	numberOfActs = 1;
}

registerScreenPlay("KaasVitiateScreenPlay", true)

function KaasVitiateScreenPlay:start()
	self:spawnMobiles()
	self:spawnActiveAreas()
end

function KaasVitiateScreenPlay:spawnActiveAreas()
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
      spawnMobile("kaas", "sith_ghost", 1, 2.2, 0.0, 0.3, 0, 36000090)
      spawnMobile("kaas", "sith_ghost", 1, -2.8, 0.0, -6.8, 0, 36000090)
      end
    return 0    
  end)
end

function KaasVitiateScreenPlay:spawnMobiles()
-- Entrance

--[[
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -0.1, 0.0, 0.3, 0, 35791484)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 2.0, 0.0, -4.2, 0, 35791484)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -2.1, 0.0, -4.2, 0, 35791484)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 2.9, 0.0, -8.5, 0, 35791484)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 0.4, 0.0, -8.5, 0, 35791484)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -2.9, 0.0, -8.5, 0, 35791484)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -10.2, 0.0, -11.6, 90, 35791485)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -10.9, 0.0, -2.4, 179, 35791486)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -19.4, 0.0, -2.5, 90, 35791486)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -19.5, 0.0, -23.3, 0, 35791488)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -0.3, -0.0, -32.2, 0, 35791489)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -8.5, 0.0, -24.4, -90, 35791488)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -8.5, 0.0, -22.0, -90, 35791488)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 2.1, 0.0, -43.1, 0, 35791489)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -0.2, 0.0, -40.0, 179, 35791489)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -4.1, 0.0, -43.4, 90, 35791489)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -12.6, -4.0, -35.7, 179, 35791490)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 0.7, -6.0, -29.9, 179, 35791491)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 15.0, -6.0, -18.8, -90, 35791491)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -13.0, -6.0, -20.0, 90, 35791489)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -2.8, -6.4, -4.1, -90, 35791494)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -6.1, -6.4, -1.6, 179, 35791494)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -10.0, -6.4, -4.1, 90, 35791494)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 8.9, -6.4, -3.9, 179, 35791495)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 4.8, -6.4, -4.0, 179, 35791495)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, 23.4, -6.5, -6.3, -45, 35791492)
	spawnMobile("kaas", "insane_vitiate_cultist", 200, -22.7, -6.5, -6.5, 45, 35791493)
	
	--]]
   end
