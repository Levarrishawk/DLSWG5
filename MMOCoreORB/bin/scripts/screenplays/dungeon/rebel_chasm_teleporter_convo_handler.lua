mayor_start = ScreenPlay:new {
  numberOfActs = 1,
  
  screenplayName = "mayor_start"
}

registerScreenPlay("mayor_start", true)

function mayor_start:start()
  if (isZoneEnabled("tatooine")) then
    self:spawnMobiles()
  end
end

function mayor_start:spawnMobiles()

  --In The Guild Hall
  spawnMobile("tatooine", "mayor_start", 1, -0.1, 2.5, 7.5, 179, 1279960)
  end

function legacy_convo:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)    
      --print("optionLink fromn the last screen is .. " .. optionLink)    
      --local thiscreen = conversation:getScreen(optionLink)
      nextConversationScreen = conversation:getScreen(optionLink)     
    end     
  end 
  --print("returning screen")   
  return nextConversationScreen 
end