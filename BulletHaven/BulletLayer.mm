//
//  BulletLayer.m
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BulletLayer.h"

@implementation BulletLayer

+(CCScene *) scene {
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	BulletLayer *layer = [BulletLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}


// on "init" you need to initialize your instance
-(id) init {
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
		// enable touches
		self.isTouchEnabled = YES;
		
		// enable accelerometer
		self.isAccelerometerEnabled = YES;
		
		CGSize screenSize = [CCDirector sharedDirector].winSize;
		CCLOG(@"Screen width %0.2f screen height %0.2f",screenSize.width,screenSize.height);
        
        bulletController = new BulletMLController("sample.xml");
        
        CCSpriteBatchNode *batch = [CCSpriteBatchNode batchNodeWithFile:@"blocks.png" capacity:150];
		[self addChild:batch z:0 tag:0];
        [self schedule: @selector(tick:)];
	}
	return self;
}

-(void) draw {
    bulletController->draw();
}



-(void) tick: (ccTime) dt {
    bulletController->update();
}

- (void)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	//Add a new body/atlas sprite at the touched location
	for( UITouch *touch in touches ) {
		CGPoint location = [touch locationInView: [touch view]];
		
		location = [[CCDirector sharedDirector] convertToGL: location];
        NSLog(@"Touch at %@", NSStringFromCGPoint( location ) );
	}
}


// on "dealloc" you need to release all your retained objects
- (void) dealloc {
	// don't forget to call "super dealloc"
	[super dealloc];
}



@end
