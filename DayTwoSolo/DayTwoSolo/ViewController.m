//
//  ViewController.m
//  DayTwoSolo
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
    
    NSString *messageChallengeOne = [self checkLengthOfStringOne:@"This is a longer string by several characters." AgainstStringTwo:@"short"];
    
    NSString *messageChallengeTwo = [self getGradeMessageForScore:82];
    
    NSDate *today = [NSDate date];
    
    int elapsed = today.timeIntervalSince1970;
    
    NSInteger year = [[[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:today] year];
    
    NSString *messageChallengeThree = [NSString
                                       stringWithFormat:@"It has been %d seconds since 1970. That's %f days or %f years. The current year is %ld.",
                                       elapsed,
                                       elapsed/3600.0/24.0,
                                       elapsed/3600.0/24.0/365.25,
                                       (long)year];
    
    
    NSLog(@"Challenge one result: %@ \n Challenge two result: %@ \n Challenge three result: %@",
          messageChallengeOne,
          messageChallengeTwo,
          messageChallengeThree);
}

-(NSString *)checkLengthOfStringOne:(NSString *)firstString AgainstStringTwo:(NSString *)secondString
{
    int difference;
    NSString *lengthMessage;
    
    difference = (int)firstString.length - (int)secondString.length;
    
    if (difference > 0)
    {
        lengthMessage = [NSString stringWithFormat:@"The first string is longer by %d characters.", difference];
    }
    else if (difference == 0)
    {
        lengthMessage = @"The two strings are the same length!";
    }
    else
    {
        lengthMessage = [NSString stringWithFormat:@"The second string is longer by %d characters.", (0 - difference)];
    }
    
    return lengthMessage;
}

-(NSString *)getGradeMessageForScore:(int)paperScore
{
    NSString *gradeMessage;
    
    if (paperScore > 89)
    {
        gradeMessage = @"Congratulations, you got an A!";
    }
    else if (paperScore > 79)
    {
        gradeMessage = @"You got a B, nice job!";
    }
    else if (paperScore > 69)
    {
        gradeMessage = @"You passed with a C.";
    }
    else if (paperScore > 59)
    {
        gradeMessage = @"Sorry, you got a D.";
    }
    else if (paperScore > 0)
    {
        gradeMessage = @"You got an F...";
    }
    
    return gradeMessage;
}

@end
