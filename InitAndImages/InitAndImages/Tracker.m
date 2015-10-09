//
//  Tracker.m
//  InitAndImages
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Tracker.h"

@interface Tracker ()

@property (strong, nonatomic) NSString *currentName;

@end

@implementation Tracker

{
    int weight;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.currentName = @"Bob";
        weight = 150;
        self.hairColor = @"Brown";
    }
    return self;
}

- (instancetype)initWithName:(NSString *)newName
{
    self = [super init];
    if (self) {
        self.currentName = newName;
        weight = 150;
        self.hairColor = @"Brown";
    }
    return self;
}

-(void)loggingProperties
{
    NSLog(@"current name is %@, current hair color is %@, with a weight of %d", self.currentName, self.hairColor, weight);
}

@end
