#include "stdafx.h"
#include "Bullet.h"
#include "BulletCommand.cpp"

Bullet::Bullet() {
	pos.x = 0;
	pos.y = 0;
	dir = 0;
	spd = 0;
	cmd = 0;
	rank = 0;
	spc = NORMAL_BULLET;
	type = 0;
	cnt = 0;
	hit = 0;
	parser = 0;
	vel.x = 0;
	vel.y = 0;
	lifetime = 0;
//	cObject = 0;
}

Bullet::~Bullet()
{
	if(cmd != 0)
	{
		delete cmd;
		cmd = 0;
	}
}

bool Bullet::readyForDeletion()
{
	if(spc != NOT_EXIST) return false;
	if(cmd != 0) return false;
	return true;
}

void Bullet::updateCObject()
{
//	if(cObject == 0) return;
//	if(cObject->info.destroying == 1)
//	{
//		cObject = 0;
//		return;
//	}
//	cObject->info.x = pos.x;
//	cObject->info.y = pos.y;
//	cObject->info.angle = dir;
}