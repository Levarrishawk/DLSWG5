/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef POLEARMLEGHIT3COMMAND_H_
#define POLEARMLEGHIT3COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "CombatQueueCommand.h"


class PolearmLegHit3Command : public CombatQueueCommand {
public:

	PolearmLegHit3Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (!weapon->isPolearmWeaponObject()) {
			return INVALIDWEAPON;
		}

		Reference<SceneObject*> object = server->getZoneServer()->getObject(target);
		ManagedReference<CreatureObject*> creatureTarget = cast<CreatureObject*>( object.get());

		if (creatureTarget == NULL)
			return GENERALERROR;

		//Supposed to send a message if you target nothing #not working
		if (creatureTarget == creature) {
			creature->sendSystemMessage("Invalid Target");
			return 0;
		}

		//Check range
		if (creature->getDistanceTo(object) > 10.f){
			creature->sendSystemMessage("You are out of range.");
			return GENERALERROR;
		}

		int duration = 5; //duration of snare on target
		int duration2 = 15; //duration of cd on caster
		int duration3 = 20; //duration of immunity on target
		uint32 buffcrc = BuffCRC::FORCE_RANK_SUFFERING;
		uint32 buffcrc2 = BuffCRC::FORCE_RANK_SERENITY;
		uint32 buffcrc3 = BuffCRC::FORCE_RANK_SERENITY;
		ManagedReference<Buff*> buff2 = new Buff(creature, buffcrc2, duration2, BuffType::JEDI);
		ManagedReference<Buff*> buff3 = new Buff(creatureTarget, buffcrc3, duration3, BuffType::JEDI);
		ManagedReference<Buff*> buff = new Buff(creatureTarget, buffcrc, duration, BuffType::JEDI);

		//caster on cd
		if(creature->hasBuff(buffcrc2)) {
			creature->sendSystemMessage("You cannot root at this time.");
			return 0;
		}

		//target on cd
		if (creatureTarget->hasBuff(buffcrc3)) {
			creature->sendSystemMessage("You cannot root this target due to immunity");
			return 0;
		}

		//last checks, if true... cast.
		if (object->isCreatureObject() && creatureTarget->isAttackableBy(creature) && !creatureTarget->hasBuff(buffcrc)) {
			buff->setSpeedMultiplierMod(0.01);
			creatureTarget->addBuff(buff);
			creature->addBuff(buff2);
			creatureTarget->addBuff(buff3);
			creature->sendSystemMessage("You root your target!");
			creatureTarget->sendSystemMessage("You've been rooted!");
			creatureTarget->playEffect("clienteffect/pl_force_resist_bleeding_self.cef", "");

		}
		return doCombatAction(creature, target);
	}

};

#endif //POLEARMLEGHIT3COMMAND_H_
