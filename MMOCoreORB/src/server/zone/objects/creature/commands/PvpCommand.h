/*
#ifndef PVPCOMMAND_H_
#define PVPCOMMAND_H_


#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/player/FactionStatus.h"
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

		CreatureObject* player = cast<CreatureObject*>(creature);

		ManagedReference<SceneObject*> obj = server->getZoneServer()->getObject(target);

		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		TangibleObject* tano = cast<TangibleObject*>( obj.get());

		uint32 pvpStatus = tano->getPvpStatusBitmask();
		uint32 optionsBitmask = tano->getOptionsBitmask();
		uint32 intFaction = tano->getFaction();

		String faction;
		tokenizer.getStringToken(faction);

		if (faction == "imperial" || faction == "rebel" || faction == "hutt") {
					tano->setFaction(faction.hashCode());
				}

		if (ghost->getFactionStatus() == 0 && (faction = "rebel" || faction = "imperial"))
			ghost->setFactionStatus(2);  // Check to see if player is rebel or imperial and onleave then make them overt.
		else if (ghost->getFactionStatus() == 2 && (faction = "rebel" || faction = "imperial"))
			ghost->setFactionStatus(0); // check to see if player is rebel or imperial and overt and make them on leave.
		else
			creature->sendSystemMessage("You must be a member of a faction to use this command.");


		return SUCCESS;
	}

};

#endif

*/
