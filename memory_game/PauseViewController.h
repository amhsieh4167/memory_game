//
//  PauseViewController.h
//  memory_game
//
//  Created by Alex Hsieh on 10/20/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResumeGameDelegate.h"

@interface PauseViewController : UIViewController
{

}

@property(nonatomic, retain)id<ResumeGameDelegate>delegate;
-(IBAction)resumeGame:(id)sender;

@end
