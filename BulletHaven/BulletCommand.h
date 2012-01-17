//
//  BulletCommand.h
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef BulletHaven_BulletCommand_h
#define BulletHaven_BulletCommand_h

#include "bulletmlparser.h"
#include "bulletmlparser-tinyxml.h"
#include "bulletmlrunner.h"
#include "Bullet.h"

class BulletCommand : public BulletMLRunner {
    Bullet* bullet_;
};

#endif
