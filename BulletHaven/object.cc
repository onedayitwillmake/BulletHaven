#include "object.h"
#include "command.h"

#include <stdio.h>
#include <math.h>

//#include <SDL.h>

Object::Object(double x0, double y0, double d0, double s0)
    : x(x0), y(y0), d(d0), s(s0)
{}

void Object::move() {
    x += s * sin(d);
    y -= s * cos(d);
}

void Object::draw() {
//    printf("x=%f y=%f d=%f s=%f\n", x, y, d, s);
//    SDL_Surface* s = SDL_GetVideoSurface();
//    SDL_Rect rect;
//    rect.x = (int)x-3; rect.y = (int)y-3; rect.w = 6; rect.h = 6;
//    SDL_FillRect(s, &rect, col);
}

Shot::Shot(double x, double y, double d, double s)
    : Object(x, y, d, s)
{}


Bullet::Bullet(class BulletMLState* state,
               double x, double y, double d, double s)
    : Object(x, y, d, s),
      command_(new BulletCommand(state, this)), alive_(true)
{}

Bullet::Bullet(class BulletMLParser* parser,
               double x, double y, double d, double s)
    : Object(x, y, d, s),
      command_(new BulletCommand(parser, this)), alive_(true)
{}

void Bullet::move() {
    if (alive_) {
        command_->run();
        Object::move();
    }
}

void Bullet::draw() {
    if (alive_) {
        Object::draw();
    }
}

Ship::Ship()
    : Object(150, 300, 0, 0)
{}

void Ship::move() {
//    Uint8* ks = SDL_GetKeyState(0);
//
//    if (ks[SDLK_UP]) {
//        y -= 3;
//    }
//    else if (ks[SDLK_DOWN]) {
//        y += 3;
//    }
//    if (ks[SDLK_RIGHT]) {
//        x += 3;
//    }
//    else if (ks[SDLK_LEFT]) {
//        x -= 3;
//    }
}
