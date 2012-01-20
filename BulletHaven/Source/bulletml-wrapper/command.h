#ifndef command_h_
#define command_h_

#include "bulletmlrunner.h"

class BulletCommand : public BulletMLRunner {
public:
    // root bullet
    BulletCommand(BulletMLParser* parser, class Bullet* bullet);
    // child bullet
    BulletCommand(BulletMLState* state, class Bullet* bullet);

    virtual double getBulletDirection();
    virtual double getAimDirection();
    virtual double getBulletSpeed();
    virtual double getDefaultSpeed();
    virtual double getRank();
    virtual void createSimpleBullet(double direction, double speed);
    virtual void createBullet(BulletMLState* state,
                              double direction, double speed);
    virtual int getTurn();
    virtual void doVanish();
    virtual void doChangeDirection(double direction);
    virtual void doChangeSpeed(double speed);
    virtual void doAccelX(double speedx);
    virtual void doAccelY(double speedy);
    virtual double getBulletSpeedX();
    virtual double getBulletSpeedY();

    // If you want to customize random generator
    //virtual double getRand();

private:
    Bullet* bullet_;
};

#endif // ! command_h_
