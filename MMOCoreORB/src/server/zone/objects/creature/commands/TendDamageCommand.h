/*

Modified: Skyyyr
Date:23JAN2016

TODO:
	-Need proper buff icon
	-Adjust action cost properly

*/

#ifndef TENDDAMAGECOMMAND_H_
#define TENDDAMAGECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "TendCommand.h"

class TendDamageCommand : public TendCommand {
public:

	TendDamageCommand(const String& name, ZoneProcessServer* server)
			: TendCommand(name, server) {

	}
		int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		int duration = 45;
		int healthHealed = 450;
		int actionCost = 800;

		uint32 buffcrc = BuffCRC::JEDI_RESIST_BLEEDING; //This is the temp. buff icon.

		StringIdChatParameter startStringId("medical_heal", "apply_healCooldown");
		StringIdChatParameter endStringId("medical_heal", "remove_healCooldown");

		ManagedReference<Buff*> buff = new Buff(creature, buffcrc, duration, BuffType::JEDI);
		Locker locker(buff);


		//Checks if they even need healing.
		if (creature->getHAM(CreatureAttribute::HEALTH) >= creature->getMaxHAM(CreatureAttribute::HEALTH)) {
			creature->sendSystemMessage("You don't need any healing at this time.");
			return 0;
		}

		//First check on having enough action to perform the ability, if not send message and return 0.
		if (creature->getHAM(CreatureAttribute::ACTION) < 900) {
			creature->sendSystemMessage("You don't have enough action to heal yourself at this time.");
			return 0;
		}

		//Check if they are on cooldown, if not check one last time for enough action to perform the ability then do it if true.
		if (!creature->hasBuff(BuffCRC::JEDI_RESIST_BLEEDING) && creature->getHAM(CreatureAttribute::ACTION) >= 901){
			creature->addBuff(buff);
			buff->setStartMessage(startStringId);
			buff->setEndMessage(endStringId);
			creature->healDamage(creature, CreatureAttribute::HEALTH, healthHealed);
			creature->inflictDamage(creature, CreatureAttribute::ACTION, actionCost, false);
			creature->playEffect("clienteffect/bacta_bomb.cef", "");
		} else {
			creature->sendSystemMessage("You are still under the effects of healing fatigue.  You can not Tend Damage right now.");
		}
		return SUCCESS;
	}

};

#endif //TENDDAMAGECOMMAND_H_







/*
Old Kept for reference if needed.


#ifndef TENDDAMAGECOMMAND_H_
#define TENDDAMAGECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "TendCommand.h"
#include "server/zone/objects/creature/events/InjuryTreatmentTask.h"

class TendDamageCommand : public TendCommand {
public:

	TendDamageCommand(const String& name, ZoneProcessServer* server)
			: TendCommand(name, server) {
		effectName = "clienteffect/medic_heal.cef";

		actionCost = 900;
		mindWoundCost = 0;

		tendDamage = true;

		healthHealed = 1250;
		//actionHealed = 50;

		//defaultTime = 5.0;
		range = 0;
	}

};

#endif //TENDDAMAGECOMMAND_H_
*/
