//
//  ViewController.m
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import "GameViewController.h"
//#import "CardImageView.h"


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
    if([card01 score] < 6)
    {
        gametime++;
        gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
        gameScoreLabel.text = [NSString stringWithFormat:@"%i", [card01 score]];
        gameMissesLabel.text = [NSString stringWithFormat:@"%i", [card01 misses]];
    }
    else {
        gameScoreLabel.text = [NSString stringWithFormat:@"%i", [card01 score]];
        [NSTimer scheduledTimerWithTimeInterval:1
                                         target:self
                                       selector:@selector(resetGame)
                                       userInfo:nil
                                        repeats:NO];
    }
}

-(void)resetGame
{
    [card01 setHighlighted:NO];
    [card01 setUserInteractionEnabled:YES];
    [card02 setHighlighted:NO];
    [card02 setUserInteractionEnabled:YES];
    [card03 setHighlighted:NO];
    [card03 setUserInteractionEnabled:YES];
    [card04 setHighlighted:NO];
    [card04 setUserInteractionEnabled:YES];
    [card05 setHighlighted:NO];
    [card05 setUserInteractionEnabled:YES];
    [card06 setHighlighted:NO];
    [card06 setUserInteractionEnabled:YES];
    [card07 setHighlighted:NO];
    [card07 setUserInteractionEnabled:YES];
    [card08 setHighlighted:NO];
    [card08 setUserInteractionEnabled:YES];
    [card09 setHighlighted:NO];
    [card09 setUserInteractionEnabled:YES];
    [card10 setHighlighted:NO];
    [card10 setUserInteractionEnabled:YES];
    [card11 setHighlighted:NO];
    [card11 setUserInteractionEnabled:YES];
    [card12 setHighlighted:NO];
    [card12 setUserInteractionEnabled:YES];
    
    [card01 resetScores];
    gametime = 0;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
    gameScoreLabel.text = [NSString stringWithFormat:@"%i", [card01 score]];
    gameMissesLabel.text = [NSString stringWithFormat:@"%i", [card01 misses]];
}

-(void)startGame
{
    gametime = 0;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
    gameScoreLabel.text = [NSString stringWithFormat:@"%i", [card01 score]];
    gameMissesLabel.text = [NSString stringWithFormat:@"%i", [card01 misses]];

    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(gameTimer:)
                                   userInfo:nil
                                    repeats:YES];
}

@end
