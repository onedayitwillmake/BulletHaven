//
//  BulletMLController.h
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef BulletHaven_BulletMLController_h
#define BulletHaven_BulletMLController_h

#include "bulletmlparser.h"
#include "bulletmlparser-tinyxml.h"
#include "object.h"
#include <vector>
#include <iostream>

class BulletMLController {
private:
    std::vector<Object*> objs;
    static BulletMLController* mInstance;
    
public:
    BulletMLController( std::string filename );
    ~BulletMLController();
    static BulletMLController* getInstance();
    
    void addObj(Object* object);
    void update();
    void draw();
    
    int turn;
    Ship* ship;
};
#endif
