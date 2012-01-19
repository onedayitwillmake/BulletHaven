//
//  CCBulletSprite.m
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CCBulletSprite.h"

@implementation CCBulletSprite

+(id) spriteWithBatchNode:(CCSpriteBatchNode*)batchNode andBullet:(Bullet*)aBullet rect:(CGRect)rect {
    CCBulletSprite* bulletSprite = [[[self alloc] initWithBatchNode:batchNode rect:rect] autorelease];
    bulletSprite->bullet_ = aBullet;
    aBullet->hasCCNode = true;
    return bulletSprite;
}

-(void) dealloc {
    bullet_ = nil;
    delete bullet_;
    [super dealloc];
}
@end
