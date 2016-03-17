//
//  PlatformNode.h
//  UberJump
//
//  Created by Stuart Hoffman on 10/12/14.
//  Copyright (c) 2014 Stuart Hoffman. All rights reserved.
//

#import "GameObjectNode.h"

typedef NS_ENUM(int, PlatformType) {
    PLATFORM_NORMAL,
    PLATFORM_BREAK,
};

@interface PlatformNode : GameObjectNode

@property (nonatomic, assign) PlatformType platformType;


@end
