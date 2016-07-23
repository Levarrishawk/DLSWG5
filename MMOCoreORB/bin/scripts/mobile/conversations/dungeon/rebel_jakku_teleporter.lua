rebel_jakku_teleporter = ConvoTemplate:new {
  initialScreen = "first_conv",
  templateType = "Lua",
  luaClassHandler = "rebel_jakku_teleporter_convo_handler",
  screens = {}
}


--Intro First
first_conv = ConvoScreen:new {
  id = "first_conv",
  leftDialog = "",
  customDialogText = "The battle lines are drawn! Our forces are attacking a key Imperial Research Facility on Jakku, all able bodied personnel are needed to join the battle at once!  Are you prepared?",
  stopConversation = "false",
  options = {
    {"I am ready to join the Battle of Jakku!", "mayor2"},
  --  {"Instance 2", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"Not yet, I need more time to prepare.", "deny"}
  
  }
}
rebel_jakku_teleporter:addScreen(first_conv);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Alright, come back when you are ready to fight!",
  stopConversation = "true",
  options = {
  }
}
rebel_jakku_teleporter:addScreen(deny);




mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "May the force be with you then!",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
rebel_jakku_teleporter:addScreen(mayor2);

mayor3 = ConvoScreen:new {
  id = "mayor3",
  leftDialog = "",
   customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
 --    {"Tell me about the wild vermin.","mayor4"},
  }
}
rebel_jakku_teleporter:addScreen(mayor4);

mayor4 = ConvoScreen:new {
  id = "mayor4",
  leftDialog = "",
  customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
  --   {"I'll help her.","mayorvermin"},
  --   {"I can't help right now.","deny"}
  }
}

mayor5 = ConvoScreen:new {
  id = "mayor5",
  leftDialog = "",
  customDialogText = "Right, off you go then!",
  stopConversation = "true",
  options = {
   --  {"I'll help her.","mayorvermin"},
  --   {"I can't help right now.","deny"}
  }
}

rebel_jakku_teleporter:addScreen(mayor5);



addConversationTemplate("rebel_jakku_teleporter", rebel_jakku_teleporter);
