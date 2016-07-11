rebel_chasm_teleporter = ConvoTemplate:new {
  initialScreen = "first_conv",
  templateType = "Lua",
  luaClassHandler = "rebel_chasm_teleporter_convo_handler",
  screens = {}
}


--Intro First
first_conv = ConvoScreen:new {
  id = "first_conv",
  leftDialog = "",
  customDialogText = "Welcome to Mos Eisley! I'm Mayor Guh'rantt. Do you know the history of Mos Eisley? It's a beautiful city, full of life and character and one of the best cantinas in the known galaxy.",
  stopConversation = "false",
  options = {
    {"I hear you need some help with a debt owed to Jabba.", "mayor2"},
    {"I'm very busy.  I'll come back later.","deny"}
  
  }
}
rebel_chasm_teleporter:addScreen(first_conv);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Oh, I see.  Well take care!",
  stopConversation = "true",
  options = {
  }
}
rebel_chasm_teleporter:addScreen(deny);




mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Yes. My...debt. My next payment, a speeder deed, was stolen from me. I can't divert...er...raise the money with all the problems in the city. If you do some things for me, it might...free up some funds I need.",
  stopConversation = "false",
  options = {
     {"I see. What would I have to do?","mayor3"},
  }
}
rebel_chasm_teleporter:addScreen(mayor2);

mayor3 = ConvoScreen:new {
  id = "mayor3",
  leftDialog = "",
  customDialogText = "Mos Eisley suffers from Tusken Raiders, wild vermin, and menacing hooligans. I don't have the staff to handle these problems. I need you to go out there. You want to help the city, don't you?",
  stopConversation = "false",
  options = {
     {"Tell me about the wild vermin.","mayor4"},
  }
}
rebel_chasm_teleporter:addScreen(mayor4);

mayor4 = ConvoScreen:new {
  id = "mayor4",
  leftDialog = "",
  customDialogText = "Mos Eisley suffers from Tusken Raiders, wild vermin, and menacing hooligans. I don't have the staff to handle these problems. I need you to go out there. You want to help the city, don't you?",
  stopConversation = "false",
  options = {
     {"I'll help her.","mayorvermin"},
     {"I can't help right now.","deny"}
  }
}

rebel_chasm_teleporter:addScreen(mayor4);

mayorvermin = ConvoScreen:new {
  id = "mayorvermin",
  leftDialog = "",
  customDialogText = "Good.",
  stopConversation = "true",
  options = {
    
  }
}
rebel_chasm_teleporter:addScreen(mayorvermin);

addConversationTemplate("rebel_chasm_teleporter", rebel_chasm_teleporter);

