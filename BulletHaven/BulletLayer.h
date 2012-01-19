//
//  BulletLayer.h
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "cocos2d.h"
#import "BulletMLController.h"

@interface BulletLayer : CCLayer {
    BulletMLController* bulletController;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
