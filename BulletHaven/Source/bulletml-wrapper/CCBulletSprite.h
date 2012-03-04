//
//  CCBulletSprite.h
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "cocos2d.h"
#import "object.h"

@interface CCBulletSprite : CCSprite {
@public
    Object* bullet_;
}

+(id) spriteWithBatchNode:(CCSpriteBatchNode*)batchNode andBullet:(Object*)aBullet rect:(CGRect)rect;
@end
