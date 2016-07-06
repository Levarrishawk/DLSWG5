/*
                Copyright <SWGEmu>
        See file COPYING for copying conditions.*/

#ifndef CSGETARTICLECOMMAND_H_
#define CSGETARTICLECOMMAND_H_

#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/ZoneProcessServer.h"
#include "server/zone/managers/templates/TemplateManager.h"
#include "server/zone/managers/object/ObjectManager.h"
#include "server/zone/managers/faction/FactionManager.h"
#include "server/db/ServerDatabase.h"
#include "server/chat/ChatManager.h"
#include "server/conf/ConfigManager.h"
#include "server/zone/managers/objectcontroller/ObjectController.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/templates/tangible/CloningBuildingObjectTemplate.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/cell/CellObject.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/managers/planet/PlanetManager.h"
#include "server/zone/packets/tangible/TangibleObjectDeltaMessage3.h"
#include "server/zone/packets/player/PlayerObjectDeltaMessage6.h"
#include "server/zone/Zone.h"
#include "server/ServerCore.h"
#include "server/zone/managers/stringid/StringIdManager.h"
//#include "server/zone/objects/creature/Creature.h"
#include "server/zone/objects/scene/SceneObject.h"

class CsGetArticleCommand : public QueueCommand {
public:

    CsGetArticleCommand(const String& name, ZoneProcessServer* server)
        : QueueCommand(name, server) {

    }

    int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

        if (!checkStateMask(creature))
            return INVALIDSTATE;

        if (!checkInvalidLocomotions(creature))
            return INVALIDLOCOMOTION;

        // Uncomment below and change zone references to spawn POB object in world.
        // Note: If POB does not have an object inside of it within the DB such as an NPC in a screenplay it will despawn at next server restart.

    /*    int nSkill = 0;

        if (creature->hasSkill("admin_server_admin_03"))
            nSkill += 1;


        ZoneServer* zserv = creature->getZoneServer();

        if (nSkill < 1){
            creature->sendSystemMessage("Customer Service Ticket System not active yet");
            return INVALIDPARAMETERS;
        }

        ManagedReference<SceneObject* > object = server->getZoneServer()->getObject(target);

        CreatureObject* player = cast<CreatureObject*>(creature);

            Zone* zone = zserv->getZone("kashyyyk");

            String tut = "object/building/general/bunker_rebel_01.iff";
            String cell = "object/cell/cell.iff";

            Reference<BuildingObject*> kashyyyk = zserv->createObject(tut.hashCode(), 1).castTo<BuildingObject*>();
            kashyyyk->createCellObjects();
            kashyyyk->setPublicStructure(true);

            float x = creature->getPositionX();
            float y = creature->getPositionY();
            float z = creature->getPositionZ();

            kashyyyk->initializePosition(x,y,z);

            zone->transferObject(kashyyyk, -1, true);

            SceneObject* cellTut = kashyyyk->getCell(11);

            SceneObject* cellTutPlayer = kashyyyk->getCell(1);

            PlayerObject* ghost = player->getPlayerObject();
            ghost->setSavedTerrainName(zone->getZoneName());
            ghost->setSavedParentID(cellTutPlayer->getObjectID());

            kashyyyk->updateToDatabase();
 */

        return SUCCESS;
    }

};

#endif //CSGETARTICLECOMMAND_H_
