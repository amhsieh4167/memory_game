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
    IBOutlet CardImageView* carda1;
    IBOutlet CardImageView* carda2;
    IBOutlet CardImageView* cardb1;
    IBOutlet CardImageView* cardb2;
    IBOutlet CardImageView* cardc1;
    IBOutlet CardImageView* cardc2;
    IBOutlet CardImageView* cardd1;
    IBOutlet CardImageView* cardd2;
    IBOutlet CardImageView* carde1;
    IBOutlet CardImageView* carde2;
    IBOutlet CardImageView* cardf1;
    IBOutlet CardImageView* cardf2;
    
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
