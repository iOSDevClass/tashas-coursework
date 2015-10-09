//
//  ViewController.m
//  LeapYearCollab
//
//  Created by Tatiana Jamison on 10/2/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int year;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonCalculateYear:(id)sender {
    [self gregsMethod];
}

- (IBAction)buttonDecrement:(id)sender {
    self.textYear.text = [NSString stringWithFormat:@"%d", --year];
}

- (IBAction)buttonIncrement:(id)sender {
    self.textYear.text = [NSString stringWithFormat:@"%d", ++year];
}

-(void)gregsMethod
{
    year = self.textYear.text.intValue;
    
    if (!(year % 4)) {              // year is divisible by 4
        if (year % 100) {           // year is not divisible by 100
            self.labelIsItALeapYear.text = @"Is a leap year";
        } else if (!(year % 100) && !(year % 400)) {    // year is divisible by 100 AND 400
            self.labelIsItALeapYear.text = @"Is a leap year";
        }
        else {
            self.labelIsItALeapYear.text = @"Is not a leap year";
        }
    }
    else
    {
        self.labelIsItALeapYear.text = @"Is not a leap year";
    }
}

@end
