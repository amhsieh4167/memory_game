//
//  CardImageView.m
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import "CardImageView.h"

@implementation CardImageView

static int numberOfTouches, score, misses;
static CardImageView *lastImage;

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
    }
    return self;
}

-(void)flipCard
{
    // [(GameViewController*)self.delegate]; //delegate codes by TJ
    
    numberOfTouches++;
    [self setHighlighted:YES];
    [self setUserInteractionEnabled:NO];
    
    switch (numberOfTouches)
    {
    case 1:
        lastImage = self;
        NSLog(@"number of touches is %i", numberOfTouches);
        break;
    case 2:
        NSLog(@"number of touches is %i", numberOfTouches);
        numberOfTouches = 0;
        
        if (lastImage.tag == self.tag) {
            score++;
            NSLog(@"they match");
        }
        else
        {
            NSLog(@"they don't match");
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
            [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(resetTwoCards)
                                           userInfo:nil
                                            repeats:NO];
        }
        break;
    }
}

-(int) score
{
    return score;
}

-(int) misses
{
    return misses;
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self flipCard];
}

-(void)resetTwoCards
{
    misses++;
    [self setHighlighted: false];
    [self setUserInteractionEnabled:true];
    [lastImage setHighlighted:false];
    [lastImage setUserInteractionEnabled:true];
}

-(void)resetScores
{
    misses = 0;
    score = 0;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
