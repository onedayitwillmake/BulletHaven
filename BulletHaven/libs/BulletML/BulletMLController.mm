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
	addObj(ship);
    
    BulletMLParser* bp = new BulletMLParserTinyXML( *filename );
    bp->build();
    addObj(new Bullet(bp, 160, 50, 0, 0));
}

BulletMLController::~BulletMLController() {
	std::map<int, Object*>::const_iterator itr;
	for (itr = objs.begin(); itr != objs.end(); ++itr) {
		delete itr->second;
	}
}

void BulletMLController::addObj(Object* object) {
	objs[object->objectId] = object;
}

void BulletMLController::removeObj(Object* object)
{
	objs.erase(object->objectId);
	delete object;
}

void BulletMLController::update() {
	std::map<int, Object*>::const_iterator itr;
	for (itr = objs.begin(); itr != objs.end(); ++itr) {
		itr->second->move();
	}
	    
    turn++;
}

void BulletMLController::draw() {
	std::map<int, Object*>::const_iterator itr;
	for (itr = objs.begin(); itr != objs.end(); ++itr) {
		itr->second->draw();
	}
}

BulletMLController* BulletMLController::getInstance() {
	if (mInstance == NULL) {
		mInstance = new BulletMLController( new std::string("sample.xml") );
	}
	return mInstance;
}