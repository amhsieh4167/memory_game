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
    gametime = 0;
//    [self startGameTimer];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(NSTimer *) startGameTimer

/*
-(void)displayTime:(NSTimer *)timer
{
    gametime++;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];

}*/

@end
