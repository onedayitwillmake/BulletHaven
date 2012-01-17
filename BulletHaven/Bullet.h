#pragma once
#include "bulletmlparser.h"
#include "Vector.h"

#define NOT_EXIST 0
#define NORMAL_BULLET 1
#define ACTIVE_BULLET 2
#define TOP_BULLET 3


class BulletCommand;

class Bullet {
public:
	Bullet();
	~Bullet();
	bool readyForDeletion();
	void updateCObject();
    ci::Vec2f pos;
	int spd;
	double dir;
	BulletCommand* cmd;
	double rank;
	int spc;
	int type;
	int shield;
	int cnt;
	int hit;
    ci::Vec2f vel; //acc
	float lifetime;
//	cr::color color;
//	CRunObject* cObject;

	BulletMLParser* parser;
};