//
//  StarNode.h
//  UberJump
//
//  Created by Stuart Hoffman on 10/12/14.
//  Copyright (c) 2014 Stuart Hoffman. All rights reserved.
//

#import "GameObjectNode.h"

typedef NS_ENUM(int, StarType) {
    STAR_NORMAL,
    STAR_SPECIAL,
};

@interface StarNode : GameObjectNode
@property (nonatomic, assign) StarType starType;

@end
