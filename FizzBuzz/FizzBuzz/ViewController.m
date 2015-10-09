//
//  ViewController.m
//  FizzBuzz
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
    
    [self doFizzBuzzUpTo:6000];
}

- (void)doFizzBuzzUpTo:(int)max
{
    int fizzCount = 0;
    int buzzCount = 0;
    int fizzBuzzCount = 0;
    
    int lastFizz = 0;
    int lastBuzz = 0;
    int lastFizzBuzz = 0;
    
    for (int i = 0; i <= max; i++) {
        NSString *message;
        BOOL mult3 = [ViewController isNumber:i aMultipleOf:3];
        BOOL mult5 = [ViewController isNumber:i aMultipleOf:5];
        
        if (mult3) {
            if (mult5) {
                message = @"FizzBuzz";
                fizzBuzzCount++;
                lastFizzBuzz = i;
            }
            else {
                message = @"Fizz";
                fizzCount++;
                lastFizz = i;
            }
        }
        else if (mult5) {
            message = @"Buzz";
            buzzCount++;
            lastBuzz = i;
        }
        
        if (!message) {
            message = [NSString stringWithFormat:@"%d", i];
        }
        NSLog(@"%@", message);
        self.maxLabel.text = [NSString stringWithFormat:@"%d", max];
        self.fizzCountLabel.text = [NSString stringWithFormat:@"Fizz, %d: %d", lastFizz, fizzCount];
        self.buzzCountLabel.text = [NSString stringWithFormat:@"Buzz, %d: %d", lastBuzz, buzzCount];
        self.fizzBuzzCountLabel.text = [NSString stringWithFormat:@"FizzBuzz, %d: %d", lastFizzBuzz, fizzBuzzCount];

    }
}

+ (BOOL)isNumber:(int)number aMultipleOf:(int)divisor
{
    if (number == 0) { // this is the working assumption of our client
        return NO;
    }
    return number % divisor == 0;
}

@end
