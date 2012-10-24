//
//  SettingViewController.h
//  memory_game
//
//  Created by Alex Hsieh on 10/23/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResumeGameDelegate.h"

@interface SettingViewController : UIViewController
{
    IBOutlet UILabel* aLabel;
}

@property(nonatomic,retain)id<ResumeGameDelegate>delegate;

@end
