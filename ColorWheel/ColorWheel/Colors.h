//
//  Colors.h
//  ColorWheel
//
//  Created by Tatiana Jamison on 10/8/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Colors : NSObject

@property (strong, nonatomic) UIColor *color;
@property (strong, nonatomic) NSString *colorName;

- (instancetype)initWithName:(NSString *)colorName andColor:(UIColor *)color;

+(NSMutableArray *)getColorArray;

@end
