//
//  BulletLayer.m
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BulletLayer.h"
#import <iostream>
#import "CCBulletSprite.h"

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
        [CCDirector sharedDirector].displayFPS = NO;
		
		CGSize screenSize = [CCDirector sharedDirector].winSize;
		CCLOG(@"Screen width %0.2f screen height %0.2f",screenSize.width,screenSize.height);
        
        NSArray *filePaths = [NSBundle pathsForResourcesOfType:@"xml" inDirectory:[[NSBundle mainBundle] bundlePath]];
        NSUInteger randomIndex = arc4random() % [filePaths count];
                              
        NSString* randomFile = [filePaths objectAtIndex:randomIndex];
        NSLog(@"Demoing - %@", randomFile);
        std::string *stdStringFilePath = new std::string( [randomFile UTF8String] );
        bulletController = new BulletMLController(stdStringFilePath);
        
        
        
        bulletBatchNode = [CCSpriteBatchNode batchNodeWithFile:@"particle.png" capacity:2036];
        [bulletBatchNode setBlendFunc:(ccBlendFunc) { GL_SRC_ALPHA, GL_ONE }];
		[self addChild:bulletBatchNode z:0 tag:0];
        [self schedule: @selector(tick:)];
	}
	return self;
}

-(void) draw {
    bulletController->draw();
}



-(void) tick: (ccTime) dt {

    int tileSize = 64;
    float imageSize = 256-tileSize;
    int idx = round(CCRANDOM_0_1()*imageSize / tileSize) * tileSize;
    
    for (size_t i = 0; i < bulletController->objs.size(); i++) {
        if( !bulletController->objs[i]->hasCCNode ) {
            if( bulletController->objs[i]->type == BulletTypeBullet )  {
                Bullet* bullet = (Bullet*)bulletController->objs[i];
                CCBulletSprite *sprite = [CCBulletSprite spriteWithBatchNode:bulletBatchNode
                                                                   andBullet:bullet rect:CGRectMake(idx,0, tileSize, tileSize)];
                [bulletBatchNode addChild:sprite];
            }
        }
    }
    
    for (CCBulletSprite* bulletSprite in bulletBatchNode.children) {
        bulletSprite.position = CGPointMake(bulletSprite->bullet_->x, bulletSprite->bullet_->y-80);
        if( !bulletSprite->bullet_->alive_ ) {
            [bulletBatchNode removeChild:bulletSprite cleanup:YES];
        }
    }
    
    bulletController->update();
}

- (NSArray *) recursivePathsForResourcesOfType: (NSString *)type inDirectory: (NSString *)directoryPath{
    
    NSMutableArray *filePaths = [[NSMutableArray alloc] init];
    // Enumerators are recursive
    NSDirectoryEnumerator *enumerator = [[[NSFileManager defaultManager] enumeratorAtPath:directoryPath] retain] ;
    NSString *filePath;
    
    while ( (filePath = [enumerator nextObject] ) != nil ) {
        // If we have the right type of file, add it to the list
        // Make sure to prepend the directory path
        if( [[filePath pathExtension] isEqualToString:type] ){
            [filePaths addObject:[directoryPath stringByAppendingString: filePath]];
        }
    }
    [enumerator release];
    return [filePaths autorelease];
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
