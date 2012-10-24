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
    [UIView animateWithDuration:10.0f
                     animations:^{
                         touchToPlayLabel.alpha = 1.0f;
                     }
                     completion:^(BOOL finished) {
                       //  touchToPlayLabel.text = @"hello";
                     }];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{

    NSLog(@"IntroView is being touched");
/*
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
  */
}

-(IBAction)startGame:(id)sender
{
    NSLog(@"IntroView touched");
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
