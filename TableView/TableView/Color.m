//
//  Color.m
//  TableView
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Color.h"

@implementation Color

+(UIColor *)getUIColorFromCustomColor:(Color *)colorObject
{
    SEL colorSelector = NSSelectorFromString([NSString stringWithFormat:@"%@Color", colorObject.colorName]);
    if ([[UIColor class] respondsToSelector:colorSelector])
    {
        return [UIColor performSelector:colorSelector];
    } else
    {
        return nil;
    }
}

+(UIColor *)getUIColorFromString:(NSString *)colorString
{
    SEL colorSelector = NSSelectorFromString([NSString stringWithFormat:@"%@Color", colorString]);
    if ([[UIColor class] respondsToSelector:colorSelector])
    {
        return [UIColor performSelector:colorSelector];
    } else
    {
        return nil;
    }
}

+(NSMutableArray *)getColorArray
{
    NSMutableArray *colorArray = [[NSMutableArray alloc] init];
    
    [colorArray addObject:[[Color alloc] initWithColorName:@"orange" andMessage:@"a cheery color!"]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"blue" andMessage:@"a little brighter than royal"]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"green" andMessage:@"it's bright..."]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"red" andMessage:@"just like a warning"]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"white" andMessage:@"plain old white"]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"cyan" andMessage:@"very light"]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"magenta" andMessage:@"it's not quite purple"]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"purple" andMessage:@"actually purple"]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"yellow" andMessage:@"sunflowers and bumblebees"]];
    [colorArray addObject:[[Color alloc] initWithColorName:@"brown" andMessage:@"a practical color."]];
    
    return colorArray;
}

- (instancetype)initWithColorName:(NSString *)colorName andMessage:(NSString *)message
{
    self = [super init];
    if (self) {
        self.colorName = colorName;
        self.message = message;
    }
    return self;
}


@end
