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




function HologrindJediManager:onPlayerCreated(pCreatureObject)

  ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
    playerObject:setJediState(2)

  end)
end





registerScreenPlay("HologrindJediManager", true)

return HologrindJediManager