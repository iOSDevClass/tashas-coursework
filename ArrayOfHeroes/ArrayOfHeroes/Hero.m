//
//  Hero.m
//  ArrayOfHeroes
//
//  Created by Tatiana Jamison on 10/12/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Hero.h"

@implementation Hero

- (instancetype)initWithName:(NSString *)heroName power:(NSString *)heroPower isGood:(BOOL)isGood
{
    self = [super init];
    if (self) {
        self.heroName = heroName;
        self.heroPower = heroPower;
        self.isGood = isGood;
    }
    return self;
}

@end
