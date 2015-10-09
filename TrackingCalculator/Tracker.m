//
//  Tracker.m
//  TrackingCalculator
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Tracker.h"

@interface Tracker ()

@property (nonatomic) int totalCalc;
@property (nonatomic) int totalAdd;
@property (nonatomic) int totalSubtract;
@property (nonatomic) int totalDivide;
@property (nonatomic) int totalMultiply;

@end

@implementation Tracker

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.totalCalc = 0;
        self.totalAdd = 0;
        self.totalSubtract = 0;
        self.totalDivide = 0;
        self.totalMultiply = 0;
    }
    return self;
}

-(void)addNumber:(double)num1 toNumber:(double)num2
{
    self.result = num1 + num2;
    self.totalCalc++;
    self.totalAdd++;
}

-(void)subtractFrom:(double)num1 byNumber:(double)num2
{
    self.result = num1 - num2;
    self.totalCalc++;
    self.totalSubtract++;
}

-(void)multiplyNumber:(double)num1 byNumber:(double)num2
{
    self.result = num1 * num2;
    self.totalCalc++;
    self.totalMultiply++;
}

-(void)divideNumber:(double)num1 byNumber:(double)num2
{
    self.result = num1 / num2;
    self.totalCalc++;
    self.totalDivide++;
}

-(void)loggingProperties
{
    NSLog(@"\nTotal calculations: %d\nAdditions: %d\nSubtractions: %d\nMultiplications: %d\nDivisions: %d", _totalCalc, _totalAdd, _totalSubtract, _totalMultiply, _totalDivide);
}

@end
