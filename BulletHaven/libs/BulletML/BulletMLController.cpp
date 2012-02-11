//
//  BulletMLController.cc
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include "BulletMLController.h"


BulletMLController* BulletMLController::mInstance = NULL;
BulletMLController::BulletMLController( std::string *filename ) {    
    BulletMLController::mInstance = this;
    turn = 0;
    ship = new Ship();
    objs.push_back(ship);
    
    BulletMLParser* bp = new BulletMLParserTinyXML( *filename );
    bp->build();
    objs.push_back(new Bullet(bp, 150, 100, 0, 0));
}

BulletMLController::~BulletMLController() {
}

void BulletMLController::addObj(Object* object) {
    objs.push_back(object);
}

void BulletMLController::update() {
    for (size_t i = 0; i < objs.size(); i++) {
        objs[i]->move();
    }
    
    turn++;
}

void BulletMLController::draw() {
//    for (size_t i = 0; i < objs.size(); i++) {
//        objs[i]->draw();
//    }
}

BulletMLController* BulletMLController::getInstance() {
	if (mInstance == NULL) {
		mInstance = new BulletMLController( new std::string("sample.xml") );
	}
	return mInstance;
}