/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef JUNGMASTRIKECOMMAND_H_
#define JUNGMASTRIKECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "JediCombatQueueCommand.h"

class JungMaStrikeCommand : public JediCombatQueueCommand {
public:

	JungMaStrikeCommand(const String& name, ZoneProcessServer* server)
		: JediCombatQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		return doCombatAction(creature, target);
	}

};

#endif //JUNGMASTRIKECOMMAND_H_
