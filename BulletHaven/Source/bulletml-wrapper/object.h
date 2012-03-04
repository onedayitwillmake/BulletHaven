#ifndef object_h_
#define object_h_

enum BulletMLObjectType {
    BulletTypeObject,
    BulletTypeShot,
    BulletTypeBullet,
    BulletTypeShip
};
class Object {
protected:
    Object(double x, double y, double d, double s);

public:
    virtual ~Object() {}

    virtual void move();
    virtual void draw();

    double x, y;
    double d, s;
    BulletMLObjectType type;
    bool hasCCNode;
	
	bool alive_;
	
	// Let's assume int is enough
	int objectId;
	static int objectIndex;
};

class Shot : public Object {
public:
    Shot(double x, double y, double d, double s);
};

class Bullet : public Object {
public:
    Bullet(class BulletMLState* state, double x, double y, double d, double s);
    Bullet(class BulletMLParser* parser,
           double x, double y, double d, double s);

    virtual void move();
    virtual void draw();
    void die() { alive_ = false; }

private:
    class BulletCommand* command_;

};

class Ship : public Object {
public:
    Ship();

    virtual void move();
};

#endif // ! object_h_

