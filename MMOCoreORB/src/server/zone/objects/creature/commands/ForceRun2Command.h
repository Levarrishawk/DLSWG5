/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions. */

#ifndef FORCERUN2COMMAND_H_
#define FORCERUN2COMMAND_H_

#include "server/zone/objects/creature/buffs/PrivateSkillMultiplierBuff.h"
#include "JediQueueCommand.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "TendCommand.h"

class ForceRun2Command : public JediQueueCommand {
public:

	ForceRun2Command(const String& name, ZoneProcessServer* server)
	: JediQueueCommand(name, server) {
		// BuffCRC's, first one is used.
		buffCRC = BuffCRC::JEDI_FORCE_RUN_2;

        // If these are active they will block buff use
		blockingCRCs.add(BuffCRC::JEDI_FORCE_RUN_1);
		blockingCRCs.add(BuffCRC::JEDI_FORCE_RUN_3);
		blockingCRCs.add(BuffCRC::JEDI_RESIST_BLEEDING);
        
		skillMods.put("force_run", 2);
		skillMods.put("slope_move", 66);
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		int res = creature->hasBuff(buffCRC) ? NOSTACKJEDIBUFF : doJediSelfBuffCommand(creature);

		if (res == NOSTACKJEDIBUFF) {
			creature->sendSystemMessage("You can not Force Run Yet!"); // You are already force running.
			return GENERALERROR;
		}

		if (res != SUCCESS) {
			return res;
		}

		// need to apply the damage reduction in a separate buff so that the multiplication and division applies right
		Buff* buff = creature->getBuff(BuffCRC::JEDI_FORCE_RUN_2);
		if (buff == NULL)
			return GENERALERROR;

		ManagedReference<PrivateSkillMultiplierBuff*> multBuff = new PrivateSkillMultiplierBuff(creature, name.hashCode(), duration, BuffType::JEDI);

		Locker locker(multBuff);

		multBuff->setSkillModifier("private_damage_divisor", 20);

		creature->addBuff(multBuff);

		locker.release();

		Locker blocker(buff);



		buff->addSecondaryBuffCRC(multBuff->getBuffCRC());

		if (creature->hasBuff(STRING_HASHCODE("burstrun")) || creature->hasBuff(STRING_HASHCODE("retreat"))) {
			creature->removeBuff(STRING_HASHCODE("burstrun"));
			creature->removeBuff(STRING_HASHCODE("retreat"));
		}
		//locker.release();

		int duration2 = 45;
		uint32 buffcrc2 = BuffCRC::JEDI_RESIST_BLEEDING;

		StringIdChatParameter startStringId("medical_heal", "apply_healCooldown");
		StringIdChatParameter endStringId("medical_heal", "force_run");

		ManagedReference<Buff*> buff2 = new Buff(creature, buffcrc2, duration2, BuffType::JEDI);
		Locker clocker(buff2);

		if (!creature->hasBuff(BuffCRC::JEDI_RESIST_BLEEDING)){
					creature->addBuff(buff2);
					buff2->setStartMessage(startStringId);
					buff2->setEndMessage(endStringId);
					return SUCCESS;
				} else {
					creature->sendSystemMessage("You are not ready to Force Run again so soon.");
					return GENERALERROR;
				}

	}

};

#endif //FORCERUN2COMMAND_H_
