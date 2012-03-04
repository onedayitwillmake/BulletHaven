//
//  BulletLayer.m
//  BulletHaven
//
//  Created by Mario Gonzalez on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BulletLayer.h"
#import "CCBulletSprite.h"

static NSInteger fileIndex = 0;

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
		[[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
		
		// enable accelerometer
		self.isAccelerometerEnabled = YES;
        [CCDirector sharedDirector].displayFPS = NO;
		
		screenSize = [CCDirector sharedDirector].winSize;
		CCLOG(@"Screen width %0.2f screen height %0.2f",screenSize.width,screenSize.height);
        
		
        NSArray *filePaths = [NSBundle pathsForResourcesOfType:@"xml" inDirectory:[[NSBundle mainBundle] bundlePath]];
        //NSUInteger randomIndex = arc4random() % [filePaths count];

        NSString* randomFile = [filePaths objectAtIndex:fileIndex];
		fileIndex = (fileIndex + 1) % [filePaths count];
        NSLog(@"Demoing - %@", randomFile);
        std::string *stdStringFilePath = new std::string( [randomFile UTF8String] );
        bulletController = new BulletMLController(stdStringFilePath);
        //bulletController = BulletMLController::getInstance();
        
        
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
    
	std::map<int, Object*>::const_iterator itr;
	for (itr = bulletController->objs.begin(); itr != bulletController->objs.end(); ++itr) {
		Object *object = itr->second;
        if ( !object->hasCCNode ) {
            if(object->type == BulletTypeBullet || object->type == BulletTypeShot) {
                CCBulletSprite *sprite = [CCBulletSprite spriteWithBatchNode:bulletBatchNode
												   andBullet:object rect:CGRectMake(idx,0, tileSize, tileSize)];
				sprite.tag = object->objectId;
				[bulletBatchNode addChild:sprite];
            }
        }
		else if (object->type == BulletTypeShot) {
			// Check if the simple shot has moved outside the application window
			if (object->x < -screenSize.width/2 || object->x > screenSize.width*1.5 ||
				object->y < -screenSize.height/2 || object->y > screenSize.height*1.5) {
				object->alive_ = false;
				NSLog(@"remove shot %d", object->objectId);
			}
		}
    }
    
    for (CCBulletSprite* bulletSprite in bulletBatchNode.children) {
		if( !bulletSprite->bullet_->alive_ ) {
			bulletController->removeObj(bulletSprite->bullet_);
			if ([bulletBatchNode getChildByTag:bulletSprite->bullet_->objectId])
				[bulletBatchNode removeChild:bulletSprite cleanup:YES];
        }
		else
			bulletSprite.position = CGPointMake(bulletSprite->bullet_->x, (screenSize.height-bulletSprite->bullet_->y));		
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

- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
	NSLog(@"touch began");

	[[CCDirector sharedDirector] replaceScene: [BulletLayer scene]];

	return YES;
}


@end
