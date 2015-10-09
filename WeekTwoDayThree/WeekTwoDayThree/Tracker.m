//
//  Tracker.m
//  WeekTwoDayThree
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Tracker.h"

@implementation Tracker

- (instancetype)initWithHairColor:(NSString *)hairColor andAge:(int)age
{
    self = [super init];
    if (self) {
        self.hairColor = hairColor;
        self.age = age;
    }
    return self;
}

@end
