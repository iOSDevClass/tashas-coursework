//
//  ViewController.m
//  NextLevelFizzBuzz
//
//  Created by Tatiana Jamison on 10/2/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonSetMax:(id)sender {
    [self refreshBackground];   // reset background colors when button is pressed
    
    if ([self validateUserInput])   // validateUserInput highlights empty text fields and confirms that each has some value
    {
        [self executeFizzBuzzFrom:self.textUserMin.text.intValue
                            toMax:self.textUserMax.text.intValue];
    }
}

- (void)refreshBackground
{
    self.textUserMax.backgroundColor = [UIColor whiteColor];
    self.textUserMin.backgroundColor = [UIColor whiteColor];
}

- (BOOL)validateUserInput
{
    if (!self.textUserMax.text.length)  // if max is empty, highlight in red
    {
        self.textUserMax.backgroundColor = [UIColor redColor];
    }
    if (!self.textUserMin.text.length)  // if min empty, highlight in red
    {
        self.textUserMin.backgroundColor = [UIColor redColor];
    }
    
    // returns non-empty value iff both text fields have input
    // note: input may be garbage if user has, e.g., bluetooth keyboard
    return self.textUserMax.text.length && self.textUserMin.text.length;
}

- (void)executeFizzBuzzFrom:(int)min toMax:(int)max
{
    int countFizz = 0;
    int countBuzz = 0;
    int countFizzBuzz = 0;
    int lastFizz = 0;
    int lastBuzz = 0;
    int lastFizzBuzz = 0;
    
    for (int i = min; i <= max; i++)
    {
        if (!(i % 3) && !(i == 0))
        { // i is divisible by 3 (and non-zero)
            if (!(i % 5))   // i is divisible by 5 AND 3
            {
                NSLog(@"FizzBuzz");
                countFizzBuzz++;
                lastFizzBuzz = i;
            }
            else    // i is divisible by 3 but NOT 5
            {
                NSLog(@"Fizz");
                countFizz++;
                lastFizz = i;
            }
        }
        else if (!(i % 5) && !(i == 0)) // i is divisible by 5 and NOT 3 (and is non-zero)
        {
            {
                NSLog(@"Buzz");
                countBuzz++;
                lastBuzz = i;
            }
        }
        else // i is not divisible by 5 OR 3 (or is equal to 0)
            NSLog(@"%d", i);
    }
    
    self.labelCountBuzz.text = [NSString stringWithFormat:@"Buzz\nTotal: %d\nLast: %d", countBuzz, lastBuzz];
    self.labelCountFizz.text = [NSString stringWithFormat:@"Fizz\nTotal: %d\nLast: %d", countFizz, lastFizz];
    self.labelCountFizzBuzz.text = [NSString stringWithFormat:@"FizzBuzz\nTotal: %d\nLast: %d", countFizzBuzz, lastFizzBuzz];
}

@end
