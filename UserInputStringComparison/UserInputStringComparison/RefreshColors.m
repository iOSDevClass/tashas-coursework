//
//  RefreshColors.m
//  UserInputStringComparison
//
//  Created by Tatiana Jamison on 10/1/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "RefreshColors.h"

@implementation RefreshColors

+ (void)refreshColorsForField:(UITextField *)firstInputField withSecondField:(UITextField *)secondInputField andFirstLabel:(UILabel *)firstLabel andSecondLabel:(UILabel *)secondLabel
{
    firstInputField.backgroundColor = [UIColor whiteColor];
    secondInputField.backgroundColor = [UIColor whiteColor];
    firstLabel.text = @"";
    secondLabel.text = @"";
}

@end
