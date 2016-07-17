/*
 * baselineInstancingComponent.h
 *
 *  Created on: July 17, 2016
 *      Author: skyyyr
 */

#ifndef BASELINEINSTANCINGCOMPONENT_H_
#define BASELINEINSTANCINGCOMPONENT_H_

#include "server/zone/objects/tangible/components/TangibleObjectMenuComponent.h"

namespace server {
namespace zone {
namespace objects {
namespace scene {
	class SceneObject;
}
}
}
}

using namespace server::zone::objects::scene;

namespace server {
namespace zone {
namespace objects {
namespace creature {
	class CreatureObject;
}
}
}
}

using namespace server::zone::objects::creature;

class baselineInstancingComponent : public TangibleObjectMenuComponent {
public:
	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player);
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID);

};

#endif /* BASELINEINSTANCINGCOMPONENT_H_ */
