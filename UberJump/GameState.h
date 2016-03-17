//
//  GameState.h
//  UberJump
//
//  Created by Stuart Hoffman on 10/12/14.
//  Copyright (c) 2014 Stuart Hoffman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameState : NSObject
@property (nonatomic, assign) int score;
@property (nonatomic, assign) int highScore;
@property (nonatomic, assign) int stars;

+ (instancetype)sharedInstance;

- (void) saveState;
@end
