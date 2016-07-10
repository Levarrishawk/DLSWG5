//This is temp



/*




#include "HolocronMenuComponent.h"

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"

#include "server/zone/ZoneServer.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/managers/jedi/JediManager.h"

int HolocronMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID != 20)
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	JediManager::instance()->useItem(sceneObject, JediManager::ITEMHOLOCRON, creature);

	return 0;
}

#include "ForceShrineMenuComponent.h"

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/objects/region/CityRegion.h"

#include "server/zone/ZoneServer.h"

void ForceShrineMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	if (player->hasSkill("force_title_jedi_novice"))
		menuResponse->addRadialMenuItem(213, 3, "@jedi_trials:meditate"); // Meditate

}

int ForceShrineMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID != 213)
		return 0;

	if (!creature->hasSkill("force_title_jedi_rank_01"))
		return 0;

	if (creature->getPosture() != CreaturePosture::CROUCHED){
		creature->sendSystemMessage("@jedi_trials:show_respect"); // Must show respect
		return 0;
	} else {
		int rand = System::random(14) + 1;
		StringBuffer sysmsg;
		sysmsg << "@jedi_trials:force_shrine_wisdom_" << rand;

		creature->sendSystemMessage(sysmsg.toString());
	}

	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

	if (ghost == NULL)
		return 0;

	ZoneServer* zserv = creature->getZoneServer();

	if (zserv == NULL)
		return 0;

	if (!creature->hasSkill("force_title_jedi_rank_02")) {
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("@jedi_trials:padawan_trials_title"); // Jedi Trials
		box->setPromptText("@jedi_trials:padawan_trials_completed");

		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());

		SkillManager::instance()->awardSkill("force_title_jedi_rank_02", creature, true, true, true);

		creature->playEffect("clienteffect/trap_electric_01.cef", "");

		PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_jedi.snd");
		creature->sendMessage(pmm);

		ghost->setJediState(2);

		// Find a trainer.
		findTrainerObject(creature, ghost.get());

		ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");

		//Check if inventory is full.
		if (inventory->isContainerFullRecursive()) {
			creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); //	You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
			return 0;
		}

		String PadawanRobe = "object/tangible/wearables/robe/robe_jedi_padawan.iff";
		ManagedReference<SceneObject*> padawanRobe = zserv->createObject(PadawanRobe.hashCode(), 1);
		if (inventory->transferObject(padawanRobe, -1)) {
			inventory->broadcastObject(padawanRobe, true);
		} else {
			padawanRobe->destroyObjectFromDatabase(true);
		}

	} else {

		ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");

		//Check if inventory is full.
		if (inventory->isContainerFullRecursive()) {
			creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); //	You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
			return 0;
		}

		String PadawanRobe = "object/tangible/wearables/robe/robe_jedi_padawan.iff";
		ManagedReference<SceneObject*> padawanRobe = zserv->createObject(PadawanRobe.hashCode(), 1);
		if (inventory->transferObject(padawanRobe, -1)) {
			inventory->broadcastObject(padawanRobe, true);
		} else {
			padawanRobe->destroyObjectFromDatabase(true);
		}

	}

	return 0;
}

void ForceShrineMenuComponent::findTrainerObject(CreatureObject* player, PlayerObject* ghost) const {

	// Trainer number. Pick a random trainer, there are at least 600 in the galaxy.
	ZoneServer* zserv = player->getZoneServer();
	Vector<String> trainerTypes;

	// Map categories defined here.
	trainerTypes.add("trainer_brawler");
	trainerTypes.add("trainer_artisan");
	trainerTypes.add("trainer_scout");
	trainerTypes.add("trainer_marksman");
	trainerTypes.add("trainer_entertainer");
	trainerTypes.add("trainer_medic");

	bool found = false;
	Vector3 coords;
	String zoneName = "";

	// This specifies the number of attempts at a retry. The first is min, second int is max amount of attempts.
	int counter = 0;
	int retriesCounter = 40;

	while (!found && counter < retriesCounter) {
		// Increment counter to prevent infinite loop.
		++counter;

		Zone* zone = zserv->getZone(System::random(zserv->getZoneCount() - 1));

		if (zone == NULL || zone->getZoneName() == "tutorial") {
			continue;
		}


		SortedVector<ManagedReference<SceneObject*> > trainers = zone->getPlanetaryObjectList(trainerTypes.get(System::random(trainerTypes.size() - 1)));

		int size = trainers.size();

		if (size <= 0) {
			continue;
		}

		ManagedReference<SceneObject*> trainer = trainers.get(System::random(size - 1));

		if (trainer == NULL) {
			continue;
		}

		ManagedReference<CreatureObject*> trainerCreo = trainer.castTo<CreatureObject*>();

		if (trainerCreo == NULL) {
			continue;
		}

		if (!(trainerCreo->getOptionsBitmask() & OptionBitmask::CONVERSE)) {
			continue;
		}

		ManagedReference<CityRegion*> city = trainerCreo->getCityRegion();

		// Make sure it's not a player-city trainer.
		if (city != NULL && !city->isClientRegion()){
			continue;
		}

		zoneName = trainerCreo.get()->getZone()->getZoneName();
		coords = trainerCreo.get()->getWorldPosition();
		found = true;

	}

	ghost->setTrainerCoordinates(coords);
ghost->setTrainerZoneName(zoneName); // For the waypoint.


//Calculate the player's chance to find an item.
	int chance;
	int skillMod;

	switch(forageType) {
	case ForageManager::SCOUT:
	case ForageManager::LAIR:
		skillMod = player->getSkillMod("foraging");
		chance = (int)(15 + (skillMod * 0.8));
		break;
	case ForageManager::MEDICAL:
		skillMod = player->getSkillMod("medical_foraging");
		chance = (int)(15 + (skillMod * 0.6));
		break;
	default:
		skillMod = 20;
		chance = (int)(15 + (skillMod * 0.6));
		break;
	}

	//Determine if player finds an item.
	if (chance > 100) //There could possibly be +foraging skill tapes.
		chance = 100;

	if (System::random(80) > chance) {
		if (forageType == ForageManager::SHELLFISH)
			player->sendSystemMessage("@harvesting:found_nothing");
		else if (forageType == ForageManager::LAIR)
			player->sendSystemMessage("@lair_n:found_nothing");
		else
			player->sendSystemMessage("@skl_use:sys_forage_fail"); //"You failed to find anything worth foraging."

	} else {

		forageGiveItems(player, forageType, forageX, forageY, zoneName);

	}

	return;

}

bool ForageManagerImplementation::forageGiveItems(CreatureObject* player, int forageType, float forageX, float forageY, const String& planet) {
	if (player == NULL)
		return false;

	Locker playerLocker(player);

	ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
	ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

	if (lootManager == NULL || inventory == NULL) {
		player->sendSystemMessage("@skl_use:sys_forage_fail");
		return false;
	}

	//Check if inventory is full.
	if (inventory->isContainerFullRecursive()) {
		player->sendSystemMessage("@skl_use:sys_forage_noroom"); //"Some foraged items were discarded, because your inventory is full."
		return false;
	}

	int itemCount = 1;
	//Determine how many items the player finds.
	if (forageType == ForageManager::SCOUT) {
		if (player->hasSkill("outdoors_scout_camp_03") && System::random(5) == 1)
			itemCount += 1;
		if (player->hasSkill("outdoors_scout_master") && System::random(5) == 1)
			itemCount += 1;
	}

	//Discard items if player's inventory does not have enough space.
	int inventorySpace = inventory->getContainerVolumeLimit() - inventory->getCountableObjectsRecursive();
	if (itemCount > inventorySpace) {
		itemCount = inventorySpace;
		player->sendSystemMessage("@skl_use:sys_forage_noroom"); //"Some foraged items were discarded, because your inventory is full."
	}

	//Determine what the player finds.
	int dice;
	int level = 1;
	String lootGroup = "";
	String resName = "";

	if (forageType == ForageManager::SHELLFISH){
		bool mullosks = false;
		if (System::random(100) > 50) {
			resName = "seafood_mollusk";
			mullosks = true;
		}
		else
			resName = "seafood_crustacean";

		if(forageGiveResource(player, forageX, forageY, planet, resName)) {
			if (mullosks)
				player->sendSystemMessage("@harvesting:found_mollusks");
			else
				player->sendSystemMessage("@harvesting:found_crustaceans");
			return true;
		}
		else {
			player->sendSystemMessage("@harvesting:found_nothing");
			return false;
		}

	}


	if (forageType == ForageManager::SCOUT) {

		for (int i = 0; i < itemCount; i++) {
			dice = System::random(200);
			level = 1;

			if (dice >= 0 && dice < 160) {
				lootGroup = "forage_food";
			} else if (dice > 159 && dice < 200) {
				lootGroup = "forage_bait";
			} else {
				lootGroup = "forage_rare";
			}

			lootManager->createLoot(inventory, lootGroup, level);
		}

	} else if (forageType == ForageManager::MEDICAL) { //Medical Forage
		dice = System::random(200);
		level = 1;

		if (dice >= 0 && dice < 40) { //Forage food.
			lootGroup = "forage_food";

		} else if (dice > 39 && dice < 110) { //Resources.
			if(forageGiveResource(player, forageX, forageY, planet, resName)) {
				player->sendSystemMessage("@skl_use:sys_forage_success");
				return true;
			} else {
				player->sendSystemMessage("@skl_use:sys_forage_fail");
				return false;
			}
		} else if (dice > 109 && dice < 170) { //Average components.
			lootGroup = "forage_medical_component";
			level = 1;
		} else if (dice > 169 && dice < 200) { //Good components.
			lootGroup = "forage_medical_component";
			level = 60;
		} else { //Exceptional Components
			lootGroup = "forage_medical_component";
			level = 200;
		}

		lootManager->createLoot(inventory, lootGroup, level);

	} else if (forageType == ForageManager::LAIR) { //Lair Search
		dice = System::random(109);
		level = 1;

		if (dice >= 0 && dice < 40) { // Live Creatures
			lootGroup = "forage_live_creatures";
		}
		else if (dice > 39 && dice < 110) { // Eggs
			resName = "meat_egg";
			if(forageGiveResource(player, forageX, forageY, planet, resName)) {
				player->sendSystemMessage("@lair_n:found_eggs");
				return true;
			} else {
				player->sendSystemMessage("@lair_n:found_nothing");
				return false;
			}
		}

		if(!lootManager->createLoot(inventory, lootGroup, level)) {
			player->sendSystemMessage("Unable to create loot for lootgroup " + lootGroup);
			return false;
		}

		player->sendSystemMessage("@lair_n:found_bugs");
		return true;
	}

	player->sendSystemMessage("@skl_use:sys_forage_success");
	return true;
}

*/
