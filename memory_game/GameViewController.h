//
//  ViewController.h
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardImageView.h"
#import "ResumeGameDelegate.h"

@class CardImageView;

@interface GameViewController : UIViewController <UIAlertViewDelegate, ResumeGameDelegate>
{
    
    CardImageView* carda1;
    CardImageView* carda2;
    CardImageView* cardb1;
    CardImageView* cardb2;
    CardImageView* cardc1;
    CardImageView* cardc2;
    CardImageView* cardd1;
    CardImageView* cardd2;
    CardImageView* carde1;
    CardImageView* carde2;
    CardImageView* cardf1;
    CardImageView* cardf2;
    
    IBOutlet UILabel*       gameTimeLabel;
    IBOutlet UILabel*       gameScoreLabel;
    IBOutlet UILabel*       gameMissesLabel;
    IBOutlet UIButton*      pauseGame;
    
    NSTimer*                gameTimer;
    
    int                     gametime;
    int                     buttonClicks;

}

@property int abc;

@property int a;

-(IBAction)pauseGameButton:(id)sender;
-(void) startGame;

// @property CardImageView* lastCardTouched;     this is a code by TJ;

@end
