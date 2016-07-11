function rebel_chasm_teleporter:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
  local creature = LuaCreatureObject(conversingPlayer)
  local convosession = creature:getConversationSession()
  lastConversation = nil
  --print("getNextConversation() called")
  local conversation = LuaConversationTemplate(conversationTemplate)
  local nextConversationScreen 
  if ( conversation ~= nil ) then
    -- checking to see if we have a next screen
    if ( convosession ~= nil ) then
       local session = LuaConversationSession(convosession)
       if ( session ~= nil ) then
        --print("casting getlastconversationsreen()")
        lastConversationScreen = session:getLastConversationScreen()
       end
    end
    if ( lastConversationScreen == nil ) then
      --print("Last conversation is null.  let's try to get the first screen")
      
      local creature = LuaCreatureObject(conversingPlayer)
      local hasAccepted = creature:hasScreenPlayState(force_sensitive.states.quest.intro, force_sensitive.questString)
      --print("hasAccepted() is " .. hasAccepted)   
      
      if ( hasAccepted == 0 ) then
        nextConversationScreen = conversation:getScreen("intro_first_screen")--First convo screen to pull.

      else
        nextConversationScreen = conversation:getScreen("complete")--End of the road.
      end
    else
      
      local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
      local player = LuaCreatureObject(conversingPlayer)
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)  
      if ( optionlink = "mayor2" )   then
        player:switchZone("tatooine", 10, 0, -10, 0) -- x, z, y, cell
      --print("optionLink fromn the last screen is .. " .. optionLink)    
      --local thiscreen = conversation:getScreen(optionLink)
      nextConversationScreen = conversation:getScreen(optionLink)     
        else
        nextConversationScreen = conversation:getScreen("complete")--End of the road.
    end     
  end 
  --print("returning screen")   
  return nextConversationScreen 
end