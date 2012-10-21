//
//  IntroViewController.h
//  memory_game
//
//  Created by Alex Hsieh on 10/20/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameViewController.h"

@interface IntroViewController : UIViewController
{
    IBOutlet UIButton* buttonStartGame;
}

-(IBAction)startGame:(id)sender;

@end
