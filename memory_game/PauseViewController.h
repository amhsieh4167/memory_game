//
//  PauseViewController.h
//  memory_game
//
//  Created by Alex Hsieh on 10/20/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PauseViewController : UIViewController
{
    IBOutlet UIButton* buttonResumeGame;
}

-(IBAction)resumeGame:(id)sender;

@end
