//
//  CardImageView.m
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import "CardImageView.h"
#import "GameViewController.h"

@implementation CardImageView

static int numberOfTouches, numberOfMatches;
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
    [self setHighlighted:true];
    [self setUserInteractionEnabled:false];
    
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
            numberOfMatches++;
            
            NSLog(@"number of touches is %i", numberOfTouches);
            NSLog(@"they match");
        }
        else
        {
            NSLog(@"number of touches is %i", numberOfTouches);
            NSLog(@"they don't match");
            [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(resetTwoCards)
                                           userInfo:nil
                                            repeats:NO];
        }
        break;
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self flipCard];
}

-(void)resetTwoCards
{
    [self setHighlighted: false];
    [self setUserInteractionEnabled:true];
    [lastImage setHighlighted:false];
    [lastImage setUserInteractionEnabled:true];
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
