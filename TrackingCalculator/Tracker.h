//
//  Tracker.h
//  TrackingCalculator
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tracker : NSObject

@property (nonatomic) double result;

-(void)addNumber:(double)num1 toNumber:(double)num2;
-(void)subtractFrom:(double)num1 byNumber:(double)num2;
-(void)multiplyNumber:(double)num1 byNumber:(double)num2;
-(void)divideNumber:(double)num1 byNumber:(double)num2;

-(void)loggingProperties;

@end
