//
//  MathClass.m
//  DayFour
//
//  Created by Tatiana Jamison on 10/1/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "MathClass.h"

@implementation MathClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.currentValue = 10;
    }
    return self;
}

-(void)gotShotForDamage:(int)amountOfDamage
{
    
}

-(void)addTwoToThisNumber:(int)numberToAddTwoTo
{
    self.currentValue = self.currentValue + 2;
    
    NSLog(@"%d", numberToAddTwoTo + 2);
}

@end
