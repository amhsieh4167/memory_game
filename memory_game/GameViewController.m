//
//  ViewController.m
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import "GameViewController.h"
#import "PauseViewController.h"
//#import "CardImageView.h"


@interface GameViewController ()

@end


@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    gametime = 0;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
    gameScoreLabel.text = [NSString stringWithFormat:@"%i", [card01 score]];
    gameMissesLabel.text = [NSString stringWithFormat:@"%i", [card01 misses]];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)gameTimer
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
        [NSTGameTimer invalidate];
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Win"
                                                            message:@"Play again?"
                                                           delegate:self
                                                  cancelButtonTitle:@"No, I need a nap"
                                                  otherButtonTitles:@"Sure, I have no life.", nil];
        [alertView show];
        [alertView release];
    }
}

-(IBAction)pauseGameButton:(id)sender
{
    [self pauseGame];
}

-(void)resumeGame
{
    NSTGameTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                    target:self
                                  selector:@selector(gameTimer)
                                  userInfo:nil
                                   repeats:YES];
}

-(void)pauseGame
{
    [NSTGameTimer invalidate];
    PauseViewController* pauseViewController = [[PauseViewController alloc] initWithNibName:@"PauseViewController" bundle:nil];
    pauseViewController.view.alpha = 0.0f;
    [self.view addSubview:pauseViewController.view];
    
    [UIView animateWithDuration:0.05f
                     animations:^{
                         pauseViewController.view.alpha = 1.0f;
                     }
                     completion:^(BOOL finished) {

                     }];
}

-(void)startGame;
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
    
    [card01 resetScores]; // this works because scores, misses are Class variables... not pretty, but works
    gametime = 0;
    gameTimeLabel.text = [NSString stringWithFormat:@"%i", gametime];
    gameScoreLabel.text = [NSString stringWithFormat:@"%i", [card01 score]];
    gameMissesLabel.text = [NSString stringWithFormat:@"%i", [card01 misses]];
    NSTGameTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(gameTimer)
                                   userInfo:nil
                                    repeats:YES];
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
