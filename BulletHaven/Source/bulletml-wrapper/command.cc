#include <iostream>

#include "command.h"
#include "object.h"
#include "BulletMLController.h"

#include <math.h>

double dtor(double x) { return x*M_PI/180; }
double rtod(double x) { return x*180/M_PI; }

BulletCommand::BulletCommand(BulletMLParser* parser, Bullet* bullet)
    : BulletMLRunner(parser), bullet_(bullet)
{}

BulletCommand::BulletCommand(BulletMLState* state, Bullet* bullet)
    : BulletMLRunner(state), bullet_(bullet)
{}

double BulletCommand::getBulletDirection() {
    return bullet_->d;
}

double BulletCommand::getAimDirection() {
    return rtod(M_PI-atan2(BulletMLController::getInstance()->ship->x-bullet_->x, BulletMLController::getInstance()->ship->y-bullet_->y));
}

double BulletCommand::getBulletSpeed() {
    return bullet_->s;
}

double BulletCommand::getDefaultSpeed() {
    return 1.0;
}

double BulletCommand::getRank() {
    return 0.5;
}

void BulletCommand::createSimpleBullet(double direction, double speed) {
    BulletMLController::getInstance()->addObj(new Shot(bullet_->x, bullet_->y, dtor(direction), speed));
}

void BulletCommand::createBullet(BulletMLState* state,
                                 double direction, double speed)
{
    BulletMLController::getInstance()->addObj(new Bullet(state, bullet_->x, bullet_->y, dtor(direction), speed));
}

int BulletCommand::getTurn() {
    return BulletMLController::getInstance()->turn;
}

void BulletCommand::doVanish() {
    bullet_->die();
}

void BulletCommand::doChangeDirection(double direction) {
    bullet_->d = dtor(direction);
}

void BulletCommand::doChangeSpeed(double speed) {
    bullet_->s = speed;
}

void BulletCommand::doAccelX(double speedx) {
    double sx = getBulletSpeedX();
    double sy = getBulletSpeedY();
    sx = speedx;
    bullet_->d = atan2(sy, sx);
    bullet_->s = sqrt(sx*sx+sy*sy);
}

void BulletCommand::doAccelY(double speedy) {
    double sx = getBulletSpeedX();
    double sy = getBulletSpeedY();
    sy = speedy;
    bullet_->d = atan2(sy, sx);
    bullet_->s = sqrt(sx*sx+sy*sy);
}

double BulletCommand::getBulletSpeedX() {
    return bullet_->s * sin(bullet_->d);
}

double BulletCommand::getBulletSpeedY() {
    return -bullet_->s * cos(bullet_->d);
}

