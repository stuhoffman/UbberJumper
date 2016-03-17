//
//  GameObjectNode.m
//  UberJump
//
//  Created by Stuart Hoffman on 10/12/14.
//  Copyright (c) 2014 Stuart Hoffman. All rights reserved.
//

#import "GameObjectNode.h"

@implementation GameObjectNode
- (BOOL) collisionWithPlayer:(SKNode *)player
{
    return NO;
}

- (void) checkNodeRemoval:(CGFloat)playerY
{
    if (playerY > self.position.y + 300.0f) {
        [self removeFromParent];
    }
}

@end
