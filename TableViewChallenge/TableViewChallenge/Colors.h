//
//  Colors.h
//  TableViewChallenge
//
//  Created by Tatiana Jamison on 10/12/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Colors : NSObject

@property (strong, nonatomic) NSString *colorName;
@property (strong, nonatomic) UIColor *color;

- (instancetype)initWithName:(NSString *)colorName andColor:(UIColor *)color;

+ (NSMutableArray *)createColorFactoryArray;

@end
