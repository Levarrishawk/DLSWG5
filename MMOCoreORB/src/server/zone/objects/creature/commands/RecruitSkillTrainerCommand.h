/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef RECRUITSKILLTRAINERCOMMAND_H_
#define RECRUITSKILLTRAINERCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/sui/listbox/SuiListBox.h"
#include "server/zone/objects/creature/commands/sui/RecruitSkillTrainerSuiCallback.h"

class RecruitSkillTrainerCommand : public QueueCommand {
public:

	RecruitSkillTrainerCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		PlayerObject* ghost = creature->getPlayerObject();
		if (ghost == NULL)
			return GENERALERROR;

		if (!ghost->hasAbility("recruitskilltrainer"))
			return GENERALERROR;

		ManagedReference<CityRegion*> city = creature->getCityRegion();
		if (city == NULL)
			return GENERALERROR;

		if (!city->isMayor(creature->getObjectID()))
			return GENERALERROR;

		ManagedReference<SuiListBox*> suiTrainerType = new SuiListBox(creature, SuiWindowType::RECRUIT_SKILL_TRAINER, 0);
		suiTrainerType->setCallback(new RecruitSkillTrainerSuiCallback(server->getZoneServer()));

		suiTrainerType->setPromptTitle("@city/city:trainer_n"); // Recruit Skill Trainer
		suiTrainerType->setPromptText("@city/city:trainer_d");

		suiTrainerType->addMenuItem("@city/city:st_architect", 0);
		suiTrainerType->addMenuItem("@city/city:st_armorsmith", 1);
		suiTrainerType->addMenuItem("@city/city:st_bountyhunter", 2);
		suiTrainerType->addMenuItem("@city/city:st_chef", 3);
		suiTrainerType->addMenuItem("@city/city:st_combatmedic", 4);
		suiTrainerType->addMenuItem("@city/city:st_commando", 5);
		suiTrainerType->addMenuItem("@city/city:st_creaturehandler", 6);
		suiTrainerType->addMenuItem("@city/city:st_droidengineer", 7);
		suiTrainerType->addMenuItem("@city/city:st_entertainer", 8);
		suiTrainerType->addMenuItem("@city/city:st_1hsword", 9);
		suiTrainerType->addMenuItem("@city/city:st_medic", 10);
		suiTrainerType->addMenuItem("@city/city:st_merchant", 11);
		suiTrainerType->addMenuItem("@city/city:st_pistol", 12);
		suiTrainerType->addMenuItem("@city/city:st_politician", 13);
		suiTrainerType->addMenuItem("@city/city:st_rifleman", 14);
		suiTrainerType->addMenuItem("@city/city:st_scout", 15);
		suiTrainerType->addMenuItem("@city/city:st_smuggler", 16);
		suiTrainerType->addMenuItem("@city/city:st_squadleader", 17);

		ghost->addSuiBox(suiTrainerType);
		creature->sendMessage(suiTrainerType->generateMessage());

		return SUCCESS;
	}

};

#endif //RECRUITSKILLTRAINERCOMMAND_H_
