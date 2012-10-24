//
//  SettingViewController.m
//  memory_game
//
//  Created by Alex Hsieh on 10/23/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

int timer = 0;

@synthesize delegate = _delegate;

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
    NSLog(@"SettingView loaded");
    [NSTimer scheduledTimerWithTimeInterval:1.0f
                                     target:self
                                   selector:@selector(printTimer)
                                   userInfo:nil
                                    repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:5.0f
                                     target:self
                                   selector:@selector(removeFromView:)
                                   userInfo:nil
                                    repeats:NO];
    // Do any additional setup after loading the view from its nib.
}

-(void)removeFromView:(NSTimer *)settingTimer
{
    [UIView animateWithDuration:5.0f animations:^{
        self.view.alpha= 0.0f;
    } completion:^(BOOL finished){
        [self.view removeFromSuperview];
        [settingTimer invalidate];
        [_delegate resumeGame];
    }];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"SettinView is touched");
}
-(void)printTimer
{
    timer++;
   aLabel.text = [NSString stringWithFormat:@"%i", timer];
    NSLog(@"timer is %i", timer);
}
//
//    UIView animateWithDuration:<#(NSTimeInterval)#> animations:<#^(void)animations#>;
//    UIView animateWithDuration:<#(NSTimeInterval)#> animations:<#^(void)animations#> completion:<#^(BOOL finished)completion#>
//    
//     [UIView animateWithDuration:2.0
//                      animations:^{
//                          gameViewController.view.alpha = 1.0f;
//                      }
//                      completion:^(BOOL finished) {
//                          [gameViewController startGame];
//                      }];

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
