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
function rebel_chasm_teleporter:start()
   spawnMobile("jakku", "reb_chasm_dungeon_teleporter", 1, -5705, 52, 5989, 0, 0)
end

--Teleport function
function rebel_chasm_teleporter:teleportPlayer(pPlayer)
	if pPlayer == nil then
		return
	end
	
	SceneObject(pPlayer):switchZone("dungeon2", -5.7, 12.1, -5.2, 410000010) print("Teleporting")
end

--The actual conversation handler
rebel_chasm_teleporter_convo_handler = Object:new {
	
}

function CorvetteTicketGiverConvoHandler:getInitialScreen(pPlayer, pNpc, pConversationTemplate)
	local convoTemplate = LuaConversationTemplate(pConversationTemplate)
	local player = CreatureObject(pPlayer)

	return convoTemplate:getScreen("first_conv")

end

function rebel_chasm_teleporter_convo_handler:getNextConversationScreen(pConversationTemplate, pPlayer, selectedOption, pConversingNpc)
	local pConversationSession = CreatureObject(pPlayer):getConversationSession()

	local pLastConversationScreen = nil

	if (pConversationSession ~= nil) then
		local conversationSession = LuaConversationSession(pConversationSession)
		pLastConversationScreen = conversationSession:getLastConversationScreen()
	end

	local conversationTemplate = LuaConversationTemplate(pConversationTemplate)

	if (pLastConversationScreen ~= nil) then
		local lastConversationScreen = LuaConversationScreen(pLastConversationScreen)
		local optionLink = lastConversationScreen:getOptionLink(selectedOption)

		return conversationTemplate:getScreen(optionLink)
	end

	return self:getInitialScreen(pPlayer, pConversingNpc, pConversationTemplate)
end

function rebel_chasm_teleporter_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen, pPlayer)
	local screen = LuaConversationScreen(conversationScreen)	
	local screenID = screen:getScreenID()

	if ( screenID == "instance_1" ) then print("Selected instance_1")
		createEvent(500, "rebel_chasm_teleporter", "teleportPlayer", pPlayer, "") print ("Creating the event to trig function")
	end

	return conversationScreen
end
