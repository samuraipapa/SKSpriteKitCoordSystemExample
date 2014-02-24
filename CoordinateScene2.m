//
//  CoordinateScene2.m
//  Coordinate System
//
//  Created by yg on 2/24/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//

#import "CoordinateScene2.h"

SKLabelNode *mySceneLabel;
SKLabelNode *myLabel;


@implementation CoordinateScene2


-(void) sceneSetUp{
    
    self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
    
    // mySceneLabel Setup
    mySceneLabel = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
    mySceneLabel.fontColor = [SKColor whiteColor];
    mySceneLabel.text = @"CoordinateScene2World!";
    mySceneLabel.fontSize = 18;
    mySceneLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMaxY(self.frame));
    
    [self addChild:mySceneLabel];

    
    // myLabel Setup
    myLabel = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
    myLabel.fontColor = [SKColor yellowColor];
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 18;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
    
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        [self sceneSetUp];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];

        [myLabel setPosition:location];
        [myLabel setText:[NSString stringWithFormat:@"x: %1.0f, y: %1.0f",location.x, location.y]];
        
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}
@end
