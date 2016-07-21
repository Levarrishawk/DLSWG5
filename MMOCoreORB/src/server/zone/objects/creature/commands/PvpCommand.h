/*
 *
 * Broken!
#ifndef PVPCOMMAND_H_
#define PVPCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/managers/player/PlayerManager.h"

class PvpCommand : public QueueCommand {
public:

	PvpCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments)const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost->getFactionStatus() == 0 && (ghost->getFaction()== "rebel" || ghost->getFaction()== "imperial"))
			ghost->setFactionStatus(2);  // Check to see if player is rebel or imperial and onleave then make them overt.
		else if (ghost->getFactionStatus() == 2 && (ghost->getFaction()== "rebel" || ghost->getFaction()== "imperial"))
			ghost->setFactionStatus(0); // check to see if player is rebel or imperial and overt and make them on leave.
		else
			creature->sendSystemMessage("You must be a member of a faction to use this command.");


		return SUCCESS;
	}

};

#endif
*/
