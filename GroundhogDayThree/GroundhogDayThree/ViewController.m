//
//  ViewController.m
//  GroundhogDayThree
//
//  Created by Tatiana Jamison on 9/30/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self executeChallengeOne];
    
    [self executeChallengeTwo];
    
    [self executeChallengeThree];
}

- (void)executeChallengeOne {
    NSString *stringToCheck = @"One string";
    NSString *againstString = @"Second string";
    NSString *message;
    
    int diff = (int)stringToCheck.length - (int)againstString.length;
    
    if (diff > 0)
    {
        message = @">";
        self.labelFirstString.backgroundColor = [UIColor greenColor];
        self.labelSecondString.backgroundColor = [UIColor redColor];
    }
    else if (diff == 0)
    {
        message = @"==";
    }
    else
    {
        message = @"<";
        self.labelSecondString.backgroundColor = [UIColor greenColor];
        self.labelFirstString.backgroundColor = [UIColor redColor];
    }
    
    self.labelFirstString.text = stringToCheck;
    self.labelSecondString.text = againstString;
    self.labelStringComparison.text = message;
}

-(void)executeChallengeTwo {
    NSString *message;
    
    int min = 0;
    int max = 6000;
    int countFizz = 0;
    int countBuzz = 0;
    int countFizzBuzz = 0;
    int lastFizz = 0;
    int lastBuzz = 0;
    int lastFizzBuzz = 0;
    
    for (int i = min; i <= max; i++) {
        if (i != 0 && i % 3 == 0) {
            if (i % 5 == 0) {
                message = @"FizzBuzz";
                countFizzBuzz++;
                lastFizzBuzz = i;
            }
            else {
//                message = @"Fizz";
                countFizz++;
                lastFizz = i;
            }
        }
        else if (i != 0 && i % 5 == 0) {
//            message = @"Buzz";
            countBuzz++;
            lastBuzz = i;
        }
        else
            message = [NSString stringWithFormat:@"%d", i];
//        NSLog(@"%@", message);
    }
    
    self.labelFizzBuzzMax.text = [NSString stringWithFormat:@"Fizzbuzz for %d-%d days", min, max];
    self.labelFizzCount.text = [NSString stringWithFormat:@"%d Fizzes up to %d", countFizz, lastFizz];
    self.labelBuzzCount.text = [NSString stringWithFormat:@"%d Buzzes up to %d", countBuzz, lastBuzz];
    self.labelFizzBuzzCount.text = [NSString stringWithFormat:@"%d FizzBuzzes up to %d", countFizzBuzz, lastFizzBuzz];
    
}

- (void)executeChallengeThree{
    NSDate *today = [NSDate date];
    NSString *messageLeapYear = @"not "; // most years are not leap years
    
    NSInteger year = [[[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:today] year];
    
    if (year % 4 == 0) {    // only years divisible by 4 are leap
        if (!(year % 100 == 0) || (year % 400 == 0)) { // century years are leap only if they are divisible by 400
            messageLeapYear = @"";
        }
    }
    
    self.labelLeapYearMessage.text = [NSString stringWithFormat:@"The year %d is %@a leap year.", (int)year, messageLeapYear];
    
}

@end
