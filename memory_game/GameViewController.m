//
//  ViewController.m
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end


@implementation GameViewController

//@synthesize lastCardTouched = _lastCardTouched;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startGame];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)gameTimer:(NSTimer *)timer
{
    gametime++;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
}

-(void)startGame
{
    gametime = 0;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(gameTimer:)
                                   userInfo:nil
                                    repeats:YES];
}

@end
