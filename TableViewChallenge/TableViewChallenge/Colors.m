//
//  Colors.m
//  TableViewChallenge
//
//  Created by Tatiana Jamison on 10/12/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Colors.h"

@implementation Colors

- (instancetype)initWithName:(NSString *)colorName andColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        self.color = color;
        self.colorName = colorName;
    }
    return self;
}

+(NSMutableArray *)createColorFactoryArray
{
    NSMutableArray *colorArray = [[NSMutableArray alloc] initWithObjects:
                  [[Colors alloc] initWithName:@"red" andColor:[UIColor redColor]],
                  [[Colors alloc] initWithName:@"green" andColor:[UIColor greenColor]],
                  [[Colors alloc] initWithName:@"orange" andColor:[UIColor orangeColor]],
                  [[Colors alloc] initWithName:@"magenta" andColor:[UIColor magentaColor]],
                  [[Colors alloc] initWithName:@"purple" andColor:[UIColor purpleColor]],
                  [[Colors alloc] initWithName:@"brown" andColor:[UIColor brownColor]],
                  [[Colors alloc] initWithName:@"cyan" andColor:[UIColor cyanColor]],
                  nil];
    
    return colorArray;
}

@end
