//
//  Colors.m
//  ColorWheel
//
//  Created by Tatiana Jamison on 10/8/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Colors.h"

@implementation Colors

- (instancetype)initWithName:(NSString *)colorName andColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        self.colorName = colorName;
        self.color = color;
    }
    return self;
}

+(NSMutableArray *)getColorArray
{
    
    Colors *orange = [[Colors alloc] initWithName:@"Orange" andColor:[UIColor orangeColor]];
    Colors *green = [[Colors alloc] initWithName:@"Green" andColor:[UIColor greenColor]];
    Colors *red = [[Colors alloc] initWithName:@"Red" andColor:[UIColor redColor]];
    Colors *blue = [[Colors alloc] initWithName:@"Blue" andColor:[UIColor blueColor]];
    Colors *yellow = [[Colors alloc] initWithName:@"Yellow" andColor:[UIColor yellowColor]];
    
    NSMutableArray *arrayColors = [[NSMutableArray alloc] init];
    
    [arrayColors addObject:orange];
    [arrayColors addObject:green];
    [arrayColors addObject:red];
    [arrayColors addObject:blue];
    [arrayColors addObject:yellow];
    
    return arrayColors;
}

@end
