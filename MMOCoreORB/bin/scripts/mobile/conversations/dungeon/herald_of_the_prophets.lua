herald_of_the_prophets = ConvoTemplate:new {
  initialScreen = "herald_of_the_prophets_start",
  templateType = "Lua",
  luaClassHandler = "herald_of_the_prophets_convo_handler",
  screens = {}
}


--Intro First
herald_of_the_prophets_start = ConvoScreen:new {
  id = "herald_of_the_prophets_start",
  leftDialog = "",
  customDialogText = "As anticipated, you have come to Dromund Kaas.  Do not be alarmed, you will not be harmed here. In fact we the Prophets of the Dark Side have been expecting you for quite some time.",
  stopConversation = "false",
  options = {
    {"I am expected?", "opt1"},
    {"Who are the Prophets of the Dark Side?", "opt2"},
    {"I had no idea there was an Imperial Garrison here?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
herald_of_the_prophets:addScreen(herald_of_the_prophets_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Find illumination in darkness.",
  stopConversation = "true",
  options = {
  }
}
herald_of_the_prophets:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "Yes, you are. The Supreme Prophet forsaw your arrival in a vision.",
  stopConversation = "false",
  options = {
    {"The Supreme Prophet?","opt1a"},
  }
}
herald_of_the_prophets:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "His name is Kadann, he was once a Jedi but came to Dromund Kaas over two centuries ago and joined our order.",
  stopConversation = "false",
  options = {
    {"What can you tell me about your order?","opt2"},
  }
}
herald_of_the_prophets:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "That is a long story, one best kept to the Historian of our Order. In short we were founded a thousand years ago after the final collapse of the Sith Empire.  We have been here on Dromund Kaas ever since.",
  stopConversation = "false",
  options = {
     {"But, The Dark Side?  Are you Sith?","opt2a"},
  }
}
herald_of_the_prophets:addScreen(opt2);

opt2a = ConvoScreen:new {
  id = "opt2a",
  leftDialog = "",
   customDialogText = "We are not Sith. Though you could say they are in our Order's Heritage. Again you should talk to Cronal, my father.  He is our order's resident historian of sorts.",
  stopConversation = "false",
  options = {
     {"Where is Kadann?","opt2b"},
  }
}
herald_of_the_prophets:addScreen(opt2a);

opt2b = ConvoScreen:new {
  id = "opt2b",
  leftDialog = "",
   customDialogText = "You can find Kadann inside the main building of the Garrison.  He is waiting for you I am sure.",
  stopConversation = "false",
  options = {
     {"Alright.  I will speak with him.","opt2c"},
  }
}
herald_of_the_prophets:addScreen(opt2b);

opt2c = ConvoScreen:new {
  id = "opt2c",
  leftDialog = "",
   customDialogText = "May you find illumination in darkness.",
  stopConversation = "true",
  options = {
    -- {"Ah, so this is your reward for fighting for the Rebellion.  House sitting for the Emperor.","opt2d"},
  }
}
herald_of_the_prophets:addScreen(opt2c);

opt2d = ConvoScreen:new {
  id = "opt2d",
  leftDialog = "",
   customDialogText = "Dead emperor you mean.  I can tell you first hand, I was at Endor, the Emperor was on that Death Star when we destroyed it.  He is dead as someone who contracted Blue Shadow Virus.",
  stopConversation = "false",
  options = {
     {"The Holonet says otherwise.","opt2g"},
  }
}
herald_of_the_prophets:addScreen(opt2d);

opt2e = ConvoScreen:new {
  id = "opt2e",
  leftDialog = "",
   customDialogText = "The holonet is still run by the Empire on Coruscant, of course they say he is still alive.  It's about the only thing keeping the rest of the systems under their boot from joining the Republic.",
  stopConversation = "false",
  options = {
     {"","opt2g"},
  }
}
herald_of_the_prophets:addScreen(opt2e);

opt2f = ConvoScreen:new {
  id = "opt2f",
  leftDialog = "",
   customDialogText = "Your guess is as good as any.  I have no idea where much of the data that came into this facility came from to begin with.  I heard rumors, but nothing more.",
  stopConversation = "false",
  options = {
    {"What sort of rumors?","opt2g"},
  }
}
herald_of_the_prophets:addScreen(opt2f);

opt2g = ConvoScreen:new {
  id = "opt2g",
  leftDialog = "",
   customDialogText = "The holonet is still run by the Empire on Coruscant, of course they say he is still alive.  It's about the only thing keeping the rest of the systems under their boot from joining the Republic.",
  stopConversation = "false",
  options = {    
    {"So, why would the Republic even want to keep this building standing?","opt3"},
    {"Good day.", "deny1"}
  }
}
herald_of_the_prophets:addScreen(opt2g);

opt3 = ConvoScreen:new {
  id = "opt3",
  leftDialog = "",
   customDialogText = "The troops here are deserters of sorts.  They are loyal to Prophet Kadann and follow his orders only.",
  stopConversation = "false",
  options = {   
    {"What can you tell me about your order?","opt2"},
    {"I see, well I will be on my way.  Good day.", "deny1"}
  }
}
herald_of_the_prophets:addScreen(opt3);




addConversationTemplate("herald_of_the_prophets", herald_of_the_prophets);
