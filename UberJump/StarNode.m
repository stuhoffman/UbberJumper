//
//  StarNode.m
//  UberJump
//
//  Created by Stuart Hoffman on 10/12/14.
//  Copyright (c) 2014 Stuart Hoffman. All rights reserved.
//

#import "StarNode.h"
#import "GameState.h"

@import AVFoundation;

@interface StarNode ()
{
    SKAction *_starSound;
}
@end

@implementation StarNode
- (BOOL) collisionWithPlayer:(SKNode *)player
{
    // Boost the player up
    player.physicsBody.velocity = CGVectorMake(player.physicsBody.velocity.dx, 400.0f);
    
    // Play sound
    [self.parent runAction:_starSound];

    // Award score
    [GameState sharedInstance].score += (_starType == STAR_NORMAL ? 20 : 100);
    [GameState sharedInstance].stars += (_starType == STAR_NORMAL ? 1: 5);

    // Remove this star
    [self removeFromParent];
    
    
    // The HUD needs updating to show the new stars and score
    return YES;
}

- (id) init
{
    if (self = [super init]) {
        // Sound for when a star is collected
        _starSound = [SKAction playSoundFileNamed:@"StarPing.wav" waitForCompletion:NO];
    }
    
    return self;
}

@end
