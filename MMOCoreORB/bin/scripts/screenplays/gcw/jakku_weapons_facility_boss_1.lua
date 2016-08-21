jakku_weapons_facility_boss_1 = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("jakku_weapons_facility_boss_1", true)

function jakku_weapons_facility_boss_1:start()
	if (isZoneEnabled("jakku")) then
		self:spawnMobiles()
	end
end

function jakku_weapons_facility_boss_1:spawnMobiles()

	local pPadawan = spawnMobile("jakku", "jakku_battle_droid", 10800, -32.5, -28, -28.1, -6, 610000119)
        createObserver(OBJECTDESTRUCTION, "jakku_weapons_facility_boss_1", "notifyPadawanDead", pPadawan)


end

function jakku_weapons_facility_boss_1:notifyPadawanDead(pPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("jakku", "jakku_black_trooper_1", 0, -32.6, -28, -17.9, 180, 610000119)
			spatialChat(pBoss, "WARNING, this facility is under a protocol 77 emergency evacuation lockdown. You are not authorized and will be terminated.")	
          createObserver(DAMAGERECEIVED,"jakku_weapons_facility_boss_1","boss_damage", pBoss)
          
          
     return 0
end

function jakku_weapons_facility_boss_1:boss_damage(pBoss, pPlayer)
		
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if ( boss ~= nil ) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)
		
		local x1 = 0.2
		local y1 = -24.2
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 45				

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("jakku_weapons_facility_boss_1:spawnAdd") == 0) then
			spatialChat(pBoss, "Resistance levels exceeding maximum acceptable value. Reinforcement required.")
			writeData("jakku_weapons_facility_boss_1:spawnAdd", 1)
			if (readData("jakku_weapons_facility_boss_1:spawnAdd") == 1) then
				local pJos = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -27.9, -28.0, -23.1, -90, 610000119)
				local firstTime = LuaCreatureObject(pJos)
				spatialChat(pJos, "Roger Roger.")
				firstTime:engageCombat(pPlayer)
			end

		end
		if (((bossHealth <= (bossMaxHealth *0.89)) or (bossAction <= (bossMaxAction * 0.89)) or (bossMind <= (bossMaxMind *0.89))) and readData("jakku_weapons_facility_boss_1:spawnAdd1") == 0) then
			--spatialChat(pBoss, "I sense your presence")
			writeData("jakku_weapons_facility_boss_1:spawnAdd1", 1)
			if (readData("jakku_weapons_facility_boss_1:spawnAdd1") == 1) then
				local pJosTwo = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -37.7, -28, -23.1, 0, 610000119)
				local secondTime = LuaCreatureObject(pJosTwo)
				spatialChat(pJosTwo, "Freeze intruders!")
				secondTime:engageCombat(pPlayer)
			end

		end
		if (((bossHealth <= (bossMaxHealth *0.85)) or (bossAction <= (bossMaxAction * 0.85)) or (bossMind <= (bossMaxMind *0.85))) and readData("jakku_weapons_facility_boss_1:spawnAdd2") == 0) then
			--spatialChat(pBoss, "")
			writeData("jakku_weapons_facility_boss_1:spawnAdd2", 1)
			if (readData("jakku_weapons_facility_boss_1:spawnAdd2") == 1) then
				local pJosThree = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -32.4, -28, -28.5, -3, 610000119)
				local thirdTime = LuaCreatureObject(pJosThree)
				spatialChat(pJosThree, "This is a restricted area!")
				thirdTime:engageCombat(pPlayer)
			end

		end		
		if (((bossHealth <= (bossMaxHealth *0.84)) or (bossAction <= (bossMaxAction * 0.84)) or (bossMind <= (bossMaxMind *0.84))) and readData("jakku_weapons_facility_boss_1:spawnAdd3") == 0) then
			spatialChat(pBoss, "WARNING, facility now under a level two incursion.  Requesting additional droid reinforcement.")
			writeData("jakku_weapons_facility_boss_1:spawnAdd3", 1)
			if (readData("jakku_weapons_facility_boss_1:spawnAdd3") == 1) then
				local pJosFour = spawnMobile("jakku", "jakku_fast_battle_droid", 0, -32.6, -28, -15.4, 180, 610000119)
				local fourthTime = LuaCreatureObject(pJosFour)
				spatialChat(pJosFour, "Protocol-77 in effect. Eliminating threat.")
				fourthTime:engageCombat(pPlayer)
			end

		end		
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("jakku_weapons_facility_boss_1:spawnAddOne") == 0) then
			spatialChat(pBoss,"WARNING, this incursion must not be allowed to succeed.  By special decree of Emperor Palpatine this facility will be destroyed if Protocol-77 is breached.")
			writeData("jakku_weapons_facility_boss_1:spawnAddOne", 1)
			if (readData("jakku_weapons_facility_boss_1:spawnAddOne") == 1) then
				local pJosFive = spawnMobile("jakku", "jakku_battle_droid", 0, -32.6, -28, -15.4, 180, 610000119)
				local fifthTime = LuaCreatureObject(pJosFive)
				spatialChat(pJosFive, "Protocol-77 Must not be compromised.")
				fifthTime:engageCombat(pPlayer)
			end

		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("jakku_weapons_facility_boss_1:spawnAddTwo") == 0) then
			spatialChat(pBoss,"WARNING, Protocol-77 nearing compromise.  Incursion on facility level 1.   Intruders, this facility has been programmed to self destruct if Protocol-77 is breached.  Cease hostilities and submit at once.")
			writeData("jakku_weapons_facility_boss_1:spawnAddTwo", 1)
			if (readData("jakku_weapons_facility_boss_1:spawnAddTwo") == 1) then
				local pJosSix = spawnMobile("jakku", "jakku_battle_droid", 0, -32.6, -28, -15.4, 180, 610000119)
				local sixthTime = LuaCreatureObject(pJosSix)
				spatialChat(pJosSix, "Eliminating Threat.")
				sixthTime:engageCombat(pPlayer)
			end

		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02))) and readData("jakku_weapons_facility_boss_1:spawnAddFour") == 0) then
			spatialChat(pBoss, "WARNING, intruders.  Protocol-77 has been breached.  Facility self destruct has been initiated.  Catastrophic reactor overload will occur in 4 hours.  This facility must not be comprimised.  You are advised to vacate the area.  Reactor overload will destroy this planet.")
			writeData("jakku_weapons_facility_boss_1:spawnAddFour", 1)
		end


		end	
	
	
	
	
	

end


