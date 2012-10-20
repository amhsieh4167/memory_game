//
//  ViewController.h
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardImageView.h"

@class CardImageView;

@interface GameViewController : UIViewController
{
    IBOutlet CardImageView* card01;
    IBOutlet CardImageView* card02;
    IBOutlet CardImageView* card03;
    IBOutlet CardImageView* card04;
    IBOutlet CardImageView* card05;
    IBOutlet CardImageView* card06;
    IBOutlet CardImageView* card07;
    IBOutlet CardImageView* card08;
    IBOutlet CardImageView* card09;
    IBOutlet CardImageView* card10;
    IBOutlet CardImageView* card11;
    IBOutlet CardImageView* card12;
    
    IBOutlet UILabel*       gameTimeLabel;
    IBOutlet UILabel*       gameScoreLabel;
    IBOutlet UILabel*       gameMissesLabel;
    
    int                     gametime;
}

// @property CardImageView* lastCardTouched;     this is a code by TJ;

@end
