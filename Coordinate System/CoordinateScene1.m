//
//  CoordinateScene1.m
//  Coordinate System
//
//  Created by yg on 2/24/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//

#import "CoordinateScene1.h"

SKLabelNode* labelSceen;
SKLabelNode* labelTouchCoord;

@implementation CoordinateScene1





-(void) setUpScene{
    self.backgroundColor = [SKColor darkGrayColor];
    
    // labelScreen Setup
    SKLabelNode *labelSceen = [SKLabelNode labelNodeWithFontNamed:@"TimesNewRoman"];
    labelSceen.text = @"CoordinateScene1";
    labelSceen.fontSize = 20;
    labelSceen.position = CGPointMake(CGRectGetMinX(self.frame)+ 85,
                                   CGRectGetMinY(self.frame));
    [self addChild:labelSceen];

    
}


-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        [self setUpScene];
        
        
        }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
