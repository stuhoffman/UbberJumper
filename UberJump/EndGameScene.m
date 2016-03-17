//
//  EndGameScene.m
//  UberJump
//
//  Created by Stuart Hoffman on 10/12/14.
//  Copyright (c) 2014 Stuart Hoffman. All rights reserved.
//

#import "EndGameScene.h"
#import "GameState.h"
#import "GameScene.h"

@implementation EndGameScene

- (id) initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size]) {
        // Stars
        SKSpriteNode *star = [SKSpriteNode spriteNodeWithImageNamed:@"Star"];
        star.position = CGPointMake(50, self.size.height-30);
        [self addChild:star];
        SKLabelNode *lblStars = [SKLabelNode labelNodeWithFontNamed:@"ChalkboardSE-Bold"];
        lblStars.fontSize = 30;
        lblStars.fontColor = [SKColor whiteColor];
        lblStars.position = CGPointMake(100, self.size.height-40);
        lblStars.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeLeft;
        [lblStars setText:[NSString stringWithFormat:@"X %d", [GameState sharedInstance].stars]];
        [self addChild:lblStars];
        
        // Score
        SKLabelNode *lblScore = [SKLabelNode labelNodeWithFontNamed:@"ChalkboardSE-Bold"];
        lblScore.fontSize = 60;
        lblScore.fontColor = [SKColor whiteColor];
        lblScore.position = CGPointMake(self.frame.size.width/2, 300);
        lblScore.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
        [lblScore setText:[NSString stringWithFormat:@"%d", [GameState sharedInstance].score]];
        [self addChild:lblScore];
        
        // High Score
        SKLabelNode *lblHighScore = [SKLabelNode labelNodeWithFontNamed:@"ChalkboardSE-Bold"];
        lblHighScore.fontSize = 30;
        lblHighScore.fontColor = [SKColor cyanColor];
        lblHighScore.position = CGPointMake(self.frame.size.width/2, 150);
        lblHighScore.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
        [lblHighScore setText:[NSString stringWithFormat:@"High Score: %d", [GameState sharedInstance].highScore]];
        [self addChild:lblHighScore];
        
        // Try again
        SKLabelNode *lblTryAgain = [SKLabelNode labelNodeWithFontNamed:@"ChalkboardSE-Bold"];
        lblTryAgain.fontSize = 30;
        lblTryAgain.fontColor = [SKColor whiteColor];
        lblTryAgain.position = CGPointMake(self.frame.size.width/2, 50);
        lblTryAgain.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
        [lblTryAgain setText:@"Tap To Try Again"];
        [self addChild:lblTryAgain];
    }
    return self;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Transition back to the Game
    SKScene *gameScene = [[GameScene alloc] initWithSize:self.frame.size];
    SKTransition *reveal = [SKTransition fadeWithDuration:0.5];
    [self.view presentScene:gameScene transition:reveal];
}

@end
