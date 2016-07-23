local ObjectManager = require("managers.object.object_manager")

rebel_jakku_teleporter = ScreenPlay:new { 
  numberOfActs = 1, 
  questString = "rebel_chasm_teleporter_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
  states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
  
  --This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
  questdata = Object:new {
    activePlayerName = "initial",
  }
}

registerScreenPlay("rebel_jakku_teleporter", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function rebel_jakku_teleporter:start()
   spawnMobile("chandrila", "rebel_jakku_teleporter", 1, 192.2, 6, -3047, 33, 0)
end

--The actual conversation handler
rebel_jakku_teleporter_convo_handler = Object:new {
  
 }


function rebel_jakku_teleporter_convo_handler:getNextConversationScreen(pConversationTemplate, pConversingPlayer, selectedOption)
  local convosession = CreatureObject(pConversingPlayer):getConversationSession()

  local lastConversationScreen = nil
  
  local player = LuaSceneObject(pConversingPlayer)

  if (convosession ~= nil) then
    local session = LuaConversationSession(convosession)
    lastConversationScreen = session:getLastConversationScreen()
  end

  local conversation = LuaConversationTemplate(pConversationTemplate)

  local nextConversationScreen

  if (lastConversationScreen ~= nil) then
    local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

    --Get the linked screen for the selected option.
    local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)

    nextConversationScreen = conversation:getScreen(optionLink)
    
    if nextConversationScreen ~= nil and player:isRebel() then
      local nextLuaConversationScreen = LuaConversationScreen(nextConversationScreen)
    else 
      nextConversationScreen = conversation:getScreen("first_conv")
    end
    else
      nextConversationScreen = conversation:getScreen("first_conv")
    end
  return nextConversationScreen
end


function rebel_jakku_teleporter_convo_handler:runScreenHandlers(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen)
  local screen = LuaConversationScreen(pConversationScreen)
  local screenID = screen:getScreenID() 

  
  local player = LuaSceneObject(pConversingPlayer)

  if ( screenID == "mayor2" and player:isRebel() ) then
 --  pConversationScreen = self:handleScreenMayor2(pConversationTemplate, pConversingPlayer, pConversingNpc, selectedOption, pConversationScreen) 
     player:switchZone("jakku", 2.0, -20.8, 22.1, 610000100) -- x, z, y, cell
     else if player:isImperial()then
      player:switchZone("jakku", 2.0, -20.8, 22.1, 610000111) -- x, z, y, cell
    end
  end
  
  
  --print("returning convosvreen")
  return pConversationScreen
end