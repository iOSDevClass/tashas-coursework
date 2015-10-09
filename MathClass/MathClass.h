//
//  MathClass.h
//  MathClass
//
//  Created by Tatiana Jamison on 10/1/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MathClass : NSObject

//@property (nonatomic) int currentNumber;

+ (double)addTwoToNumber:(double)number;
+ (double)divideByTwo:(double)number;
+ (double)multiplyByTwo:(double)number;
+ (double)subtractByTwo:(double)number;
- (double)addTwoToNumber:(double)number;
- (double)divideByTwo:(double)number;
- (double)multiplyByTwo:(double)number;
- (double)subtractByTwo:(double)number;

@end
