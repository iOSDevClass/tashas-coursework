//
//  MathClass.m
//  MathClass
//
//  Created by Tatiana Jamison on 10/1/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "MathClass.h"

@implementation MathClass

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self.currentNumber = 3;
//    }
//    return self;
//}

- (double)addTwoToNumber:(double)number
{
    return number + 2;
}

- (double)divideByTwo:(double)number
{
    return number / 2;
}

- (double)multiplyByTwo:(double)number
{
    return number * 2;
}

- (double)subtractByTwo:(double)number
{
    return number - 2;
}

+ (double)addTwoToNumber:(double)number
{
    return number + 2;
}

+ (double)divideByTwo:(double)number
{
    return number / 2;
}

+ (double)multiplyByTwo:(double)number
{
    return number * 2;
}

+ (double)subtractByTwo:(double)number
{
    return number - 2;
}


@end
