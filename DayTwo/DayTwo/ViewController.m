//
//  ViewController.m
//  DayTwo
//
//  Created by Tatiana Jamison on 9/29/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *newString = @"No";
    NSString *secondString = @"Home";
    
    NSString *checkLengthMessage = [self checkLengthOfFirstWord:newString againstSecondWord:secondString];
    
    NSLog(@"%@", checkLengthMessage);
}

-(NSString *)checkLengthOfFirstWord:(NSString *)stringToCheck againstSecondWord:(NSString *)againstString
{
    NSString *message;
    
    NSUInteger firstLength = stringToCheck.length;
    NSUInteger secondLength = againstString.length;
        
    if (firstLength < secondLength)
    {
        message = [NSString stringWithFormat:@"First message is shorter than the second message by %lu", secondLength - firstLength];

    }
    else if (firstLength == secondLength)
    {
        message = [NSString stringWithFormat:@"Exactsies!"];

    }
    else
    {
        message = [NSString stringWithFormat:@"First message is longer than the second message by %lu", firstLength - secondLength];

    }
    return message;
}

@end
