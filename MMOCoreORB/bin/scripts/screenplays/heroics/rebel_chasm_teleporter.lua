rebel_chasm_teleporter = ScreenPlay:new { 
	numberOfActs = 1, 
	questString = "rebel_chasm_teleporter_queststring", --This needs to be unique! If not unique you will not pull the proper conversation.
	states = {}, --Blank, as we don't need screenplay states to teleport someone. It remains in-case we need to add it though.
	
	--This is basic quest related, doesn't harm and doesn't really do anything (I keep it for goodluck :P)
	questdata = Object:new {
		activePlayerName = "initial",
	}
}

registerScreenPlay("rebel_chasm_teleporter", true) --Initialize the screenplay IAW the screenplay include

--Simply spawns the NPC
function rebel_chasm_teleporter:spawnMobiles()
   spawnMobile("jakku", "reb_chasm_dungeon_teleporter", 1, -5705, 52, 5989, 0, 0)
end

--The actual conversation handler
rebel_chasm_teleporter_convo_handler = Object:new {
	
 }

function rebel_chasm_teleporter_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
	end
		if ( lastConversationScreen == nil ) then
			--print("Last conversation is null.  let's try to get the first screen")
				nextConversationScreen = conversation:getScreen("first_conv")--First convo screen to pull.
	  end	
	--print("returning screen")		
	return nextConversationScreen	
end

function rebel_chasm_teleporter_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)	
	--print("\ntest_convo_handler:runScreenHandlers() called\n")
	local screen = LuaConversationScreen(conversationScreen)	
	local screenID = screen:getScreenID()	
	--print("screenID is " .. screenID	)
	local player = LuaCreatureObject(conversingPlayer)

	if ( screenID == "mayor2" ) then
		 player:switchZone("dungeon2", -5.7, 12.1, -5.2, 410000010) -- x, z, y, cell
	end
	
	
	--print("returning convosvreen")
	return conversationScreen
end
