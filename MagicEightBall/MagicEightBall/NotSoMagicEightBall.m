//
//  NotSoMagicEightBall.m
//  MagicEightBall
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "NotSoMagicEightBall.h"

@implementation NotSoMagicEightBall

-(void)getAnswer
{
    UIImage *imageAsk;
    
    [self getRandom];
    
    switch (self.randomNumber) {
        case 2:
            imageAsk = [UIImage imageNamed:@"messageMagicEightBall"];
            self.lastSeen = 2;
            self.answerMessage = @"Your lucky day!";
            break;
        case 3:
            imageAsk = [UIImage imageNamed:@"messageOutlookNotGood"];
            self.lastSeen = 3;
            self.answerMessage = @"Womp womp.";
            break;
        default:
            imageAsk = [UIImage imageNamed:@"messageReplyHazy"];
            self.lastSeen = 1;
            self.answerMessage = @"Ask again later.";
            break;
    }
    self.answerImage = imageAsk;
}

-(void)resetEightBall
{
    UIImage *imageDefault = [UIImage imageNamed:@"defaultMagicEightBall"];
    self.answerImage = imageDefault;
    self.lastSeen = -1;
    self.answerMessage = @"";
}

-(void)getRandom
{
    int getRandom;
    do {
        getRandom = arc4random() % 3 + 1;
    } while (getRandom == self.lastSeen);
    self.randomNumber = getRandom;
}

@end
