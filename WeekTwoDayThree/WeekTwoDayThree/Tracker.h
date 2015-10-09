//
//  Tracker.h
//  WeekTwoDayThree
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tracker : NSObject

@property (strong, nonatomic) NSString *hairColor;
@property (nonatomic) int age;

- (instancetype)initWithHairColor:(NSString *)hairColor andAge:(int)age;

@end
