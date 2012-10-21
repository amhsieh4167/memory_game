//
//  PauseViewController.m
//  memory_game
//
//  Created by Alex Hsieh on 10/20/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import "PauseViewController.h"
#import "GameViewController.h"

@interface PauseViewController ()

@end

@implementation PauseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)resumeGame:(id)sender
{
    [self.view removeFromSuperview];
    
}

@end
