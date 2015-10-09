//
//  NameMyGrade.m
//  GradingWithUserInput
//
//  Created by Tatiana Jamison on 10/2/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "NameMyGrade.h"

@implementation NameMyGrade

+(NSString *)getLetterGrade:(int)numericGrade andUpdateLabel:(UILabel *)label
{
    NSString *grade;
    
    if (numericGrade > 89) {
        grade = @"A";
        label.textColor = [UIColor greenColor];
    } else if (numericGrade > 79) {
        grade = @"B";
        label.textColor = [UIColor yellowColor];
    } else if (numericGrade > 69) {
        grade = @"C";
        label.textColor = [UIColor blueColor];
    } else if (numericGrade > 59) {
        grade = @"D";
        label.textColor = [UIColor orangeColor];
    } else if (numericGrade >= 0){
        grade = @"F";
        label.textColor = [UIColor redColor];
    } else {
        grade = @"Invalid number grade.";
    }
    
    return grade;
}

@end
