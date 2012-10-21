//
//  IntroViewController.m
//  memory_game
//
//  Created by Alex Hsieh on 10/20/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import "IntroViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

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

-(IBAction)startGame:(id)sender
{
    GameViewController* gameViewController = [[GameViewController alloc] initWithNibName:@"GameViewController" bundle:nil];
    gameViewController.view.alpha = 0.0f;
    [self.view addSubview:gameViewController.view];
    
    [UIView animateWithDuration:2.0
                     animations:^{
                         gameViewController.view.alpha = 1.0f;
                     }
                     completion:^(BOOL finished) {
                         [gameViewController startGame];
                     }];
}

@end
