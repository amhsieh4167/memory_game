//
//  CardImageView.h
//  memory_game
//
//  Created by Alex Hsieh on 10/18/12.
//  Copyright (c) 2012 Alex Hsieh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardImageView : UIImageView

// @property(nonatomic, assign) IBOutlet id delegate;

-(void)flipCard;
-(int) score;
-(int) misses;
-(void) resetScores;



@end
