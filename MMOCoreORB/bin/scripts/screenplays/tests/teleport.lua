--[[
    This screenplay is to display and comment on how to have teleporting in your screenplay.
  ]]--


teleportTest = ScreenPlay:new { 
	numberOfActs = 1,
}

registerScreenPlay("teleportTest", true)


--Some of these calls may be old, and will need updated. Basically will still be the same.

function teleportTest:functionCall(creatureObject, playerObject)

  --Basics
	if creatureObject == nil or playerObject == nil then
		return 0
	end
	
	--Include basics
	local player = LuaCreatureObject(playerObject)
	local creature = LuaCreatureObject(creatureObject)
	
	--Test variable
	local statementVariable = screenplayState() or conversationScreen()
	
	if (statementVariable == true) then
		local creo = LuaSceneObject(creatureObject)
		creo:switchZone("planet", 10, 0, -10, 0) -- x, z, y, cell
	end	
end
