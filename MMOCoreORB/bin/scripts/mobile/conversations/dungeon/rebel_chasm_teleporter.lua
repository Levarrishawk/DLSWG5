
--Made with Skyyyr's Wrench Tool 

rebel_chasm_convoTemplate = ConvoTemplate:new {
	 initialScreen = "first_conv",
	 templateType = "Lua",
	 luaClassHandler = "rebel_chasm_teleporter_convo_handler",
	 screens = {}
}

first_conv = ConvoScreen:new {
	 id = "first_conv",
	leftDialog = "",
	customDialogText = "Where would you like to travel?",
	stopConversation = "false",
	options = {"
		 {"Instance 1!","instance_1"},
		 {"Nevermind.","deny"}"
	 }
 }
rebel_chasm_convoTemplate:addScreen("first_conv");

instance_1 = ConvoScreen:new {
	 id = "instance_1",
	leftDialog = "",
	customDialogText = "Transporting now.",
	stopConversation = "true",
	options = {""
	 }
 }
rebel_chasm_convoTemplate:addScreen("instance_1");

deny = ConvoScreen:new {
	 id = "deny",
	leftDialog = "",
	customDialogText = "Too bad then.",
	stopConversation = "true",
	options = {""
	 }
 }
rebel_chasm_convoTemplate:addScreen("deny");


addConversationTemplate("rebel_chasm_convoTemplate", rebel_chasm_convoTemplate);
