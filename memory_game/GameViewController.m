//
//  ViewController.m
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#define kTimerInterval 1.0
#define kWinningScore 6
#import "GameViewController.h"
#import "PauseViewController.h"
#import "SettingViewController.h"
//#import <QuartzCore/QuartzCore.h>
//#import "CardImageView.h"

@interface GameViewController ()

@end

@implementation GameViewController

@synthesize a = _a; // so when a getter or setter method called via self.a we are accessing the _a instance variable


- (void)viewDidLoad
{
    [super viewDidLoad];
    carda1.highlightedImage = [UIImage imageNamed:@"Jordan.jpg"];
    carda1.tag = 0;
    carda2.highlightedImage = [UIImage imageNamed:@"Jordan.jpg"];
    carda2.tag = 0;
    cardb1.highlightedImage = [UIImage imageNamed:@"Jackson.jpg"];
    cardb1.tag = 1;
    cardb2.highlightedImage = [UIImage imageNamed:@"Jackson.jpg"];
    cardb2.tag = 1;
    cardc1.highlightedImage = [UIImage imageNamed:@"Kukoc.jpg"];
    cardc1.tag = 2;
    cardc2.highlightedImage = [UIImage imageNamed:@"Kukoc.jpg"];
    cardc2.tag = 2;
    cardd1.highlightedImage = [UIImage imageNamed:@"Kerr.jpg"];
    cardd1.tag = 3;
    cardd2.highlightedImage = [UIImage imageNamed:@"Kerr.jpg"];
    cardd2.tag = 3;
    carde1.highlightedImage = [UIImage imageNamed:@"Rodman.jpg"];
    carde1.tag = 4;
    carde2.highlightedImage = [UIImage imageNamed:@"Rodman.jpg"];
    carde2.tag = 4;
    cardf1.highlightedImage = [UIImage imageNamed:@"Pippen.jpg"];
    cardf1.tag = 5;
    cardf2.highlightedImage = [UIImage imageNamed:@"Pippen.jpg"];
    cardf2.tag = 5;
    gametime = 0;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
    gameScoreLabel.text = [NSString stringWithFormat:@"%i", [CardImageView score]];
    gameMissesLabel.text = [NSString stringWithFormat:@"%i", [CardImageView misses]];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)gameTimer
{
    if([CardImageView score] < kWinningScore)
    {
        gametime++;
        gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
        gameScoreLabel.text = [NSString stringWithFormat:@"%i", [CardImageView score]];
        gameMissesLabel.text = [NSString stringWithFormat:@"%i", [CardImageView misses]];
    }
    else {
        gameScoreLabel.text = [NSString stringWithFormat:@"%i", [CardImageView score]];
        [gameTimer invalidate];
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"You've Won!"
                                                            message:@"Play again?"
                                                           delegate:self
                                                  cancelButtonTitle:@"No, I need a nap"
                                                  otherButtonTitles:@"Sure, I have no life.", nil];
        [alertView show];
        [alertView release];
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    //[self flipCard];
    NSLog(@"GameView touched");
}

-(void)pauseGame
{
    [gameTimer invalidate];
    PauseViewController* pauseViewController = [[PauseViewController alloc] initWithNibName:@"PauseViewController" bundle:nil];
    pauseViewController.view.alpha = 1.0f;
    [self.view addSubview:pauseViewController.view];
    pauseViewController.delegate = self;
    
    [UIView animateWithDuration:1.0f
                     animations:^{
                         pauseViewController.view.alpha = 1.0f;
                     }];
}

-(void)startGame;
{
    [carda1 setHighlighted:NO];
    [carda1 setUserInteractionEnabled:YES];
    [carda2 setHighlighted:NO];
    [carda2 setUserInteractionEnabled:YES];
    [cardb1 setHighlighted:NO];
    [cardb1 setUserInteractionEnabled:YES];
    [cardb2 setHighlighted:NO];
    [cardb2 setUserInteractionEnabled:YES];
    [cardc1 setHighlighted:NO];
    [cardc1 setUserInteractionEnabled:YES];
    [cardc2 setHighlighted:NO];
    [cardc2 setUserInteractionEnabled:YES];
    [cardd1 setHighlighted:NO];
    [cardd1 setUserInteractionEnabled:YES];
    [cardd2 setHighlighted:NO];
    [cardd2 setUserInteractionEnabled:YES];
    [carde1 setHighlighted:NO];
    [carde1 setUserInteractionEnabled:YES];
    [carde2 setHighlighted:NO];
    [carde2 setUserInteractionEnabled:YES];
    [cardf1 setHighlighted:NO];
    [cardf1 setUserInteractionEnabled:YES];
    [cardf2 setHighlighted:NO];
    [cardf2 setUserInteractionEnabled:YES];
    
    [CardImageView resetScores];
    gametime = 0;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
    gameScoreLabel.text = [NSString stringWithFormat:@"%i", [CardImageView score]];
    gameMissesLabel.text = [NSString stringWithFormat:@"%i", [CardImageView misses]];
    [self startTimer];
}

#pragma mark IBActions

-(IBAction)pauseGameButton:(id)sender
{
    [self pauseGame];
    // self.view.layer
    //(CALayer *)
}

-(IBAction)setting:(id)sender
{
    [gameTimer invalidate];
    SettingViewController* settingViewController = [[SettingViewController alloc] initWithNibName:@"SettingViewController" bundle:nil];
    settingViewController.view.alpha = 1.0f;
    [self.view addSubview:settingViewController.view];
    NSLog(@"Gameview added settingView");
    settingViewController.delegate = self;
    //    [UIView animateWithDuration:5.0f
    //                     animations:^{
    //                         settingViewController.view.alpha = 1.0f;
    //                     }];
    
}

#pragma mark ResumeGameDelegate
- (void) startTimer
{
    gameTimer = [NSTimer scheduledTimerWithTimeInterval:kTimerInterval
                                                 target:self
                                               selector:@selector(gameTimer)
                                               userInfo:nil
                                                repeats:YES];
    
}
-(void)resumeGame
{
    [self startTimer];
}

#pragma mark UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            [self.view removeFromSuperview];
            break;
        case 1:
            [self startGame];
            break;
        default:
            break;
    }
}

@end
