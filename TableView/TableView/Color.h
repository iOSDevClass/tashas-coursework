//
//  Color.h
//  TableView
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Color : NSObject

@property (strong, nonatomic) NSString *colorName;
@property (strong, nonatomic) NSString *message;

+(UIColor *)getUIColorFromCustomColor:(Color *)colorObject;
+(UIColor *)getUIColorFromString:(NSString *)colorString;
+(NSMutableArray *)getColorArray;

@end
