//
//  MagicEightBall.m
//  WeekOneDayTwoPairChallenge
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "MagicEightBall.h"

@implementation MagicEightBall

+(NSMutableArray *)eightBallObject
{
    NSMutableArray *myArray = [[NSMutableArray alloc] init];
    
    MagicEightBall *objectOne =[[MagicEightBall alloc] initWithTitle:@"Glory!"
                                                           withImage:[UIImage imageNamed:@"messageMagicEightBall"]
                                                         withMessage:@"Way to go (that's lame)"];
    
    MagicEightBall *objectTwo = [[MagicEightBall alloc] initWithTitle:@"Too bad :("
                                                            withImage:[UIImage imageNamed:@"messageOutlookNotGood"]
                                                          withMessage:@"Rome wasn't built in a day."];
    
    MagicEightBall *objectThree = [[MagicEightBall alloc] initWithTitle:@"It's the flux capacitor."
                                                              withImage:[UIImage imageNamed:@"messageReplyHazy"]
                                                            withMessage:@"You know, the thing."];
    
    [myArray addObject:objectOne];
    [myArray addObject:objectTwo];
    [myArray addObject:objectThree];
    
    return myArray;
}

- (instancetype)initWithTitle:(NSString *)title withImage:(UIImage *)image withMessage:(NSString *)message
{
    self = [super init];
    if (self) {
        self.title = title;
        self.image = image;
        self.message = message;
    }
    return self;
}

@end
