
bronellIntel =  {
      containerIds = { 3795397, 3915469, 4105781 }, -- Talus, Naboo, Lok
      itemTemplates = { "object/tangible/loot/dungeon/corellian_corvette/neutral_assassin_filler01.iff", "object/tangible/loot/dungeon/corellian_corvette/neutral_assassin_filler02.iff", "object/tangible/loot/dungeon/corellian_corvette/neutral_assassin_intel.iff" },
    }

bronellTicketInfo = { depPlanet = "chandrila", faction = "neutral", missionType = "assassination" }

bronellCompensation = { { compType = "credits", amount = 15000 } }

bronell = { planetName = "chandrila", npcTemplate = "bronell", x = 31.7, z = 0.1, y = 4.7, direction = 172, cellID = 35791443, position = STAND }

ticketGiverBronell = CorvetteTicketGiverLogic:new {
  numberOfActs = 1,
  npc = bronell,
  intelMap = bronellIntel,
  ticketInfo = bronellTicketInfo,
  giverName = "ticketGiverBronell",
  faction = 0,
  compensation = bronellCompensation,
  badgeNumber = 117,
  menuComponent = "BronellIntelSearchMenuComponent",
}

registerScreenPlay("ticketGiverBronell", true)

ticketGiverBronellConvoHandler = CorvetteTicketGiverConvoHandler:new {
  ticketGiver = ticketGiverBronell
}

BronellIntelSearchMenuComponent = IntelSearchMenuComponent:new {
  ticketGiver = ticketGiverBronell
}