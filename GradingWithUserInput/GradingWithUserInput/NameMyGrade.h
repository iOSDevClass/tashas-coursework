//
//  NameMyGrade.h
//  GradingWithUserInput
//
//  Created by Tatiana Jamison on 10/2/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NameMyGrade : NSObject

+(NSString *)getLetterGrade:(int)numericGrade andUpdateLabel:(UILabel *)label;

@end
