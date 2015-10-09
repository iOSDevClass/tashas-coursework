//
//  ViewController.m
//  TextInputChallenge
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    NSMutableArray *arrayUserInput;
    NSMutableArray *arrayTemp;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    arrayUserInput = [[NSMutableArray alloc] init];
    arrayTemp = [[NSMutableArray alloc] init];
}

// IB Action functions

- (IBAction)buttonSubmit:(id)sender {
    [self addUserInputToArray];
    [self logItemLengthInArray];
}

- (IBAction)buttonAllCaps:(id)sender {
    for (NSString *stringInArray in arrayUserInput) {
        [arrayTemp addObject:[stringInArray uppercaseString]];
    }
    arrayUserInput = arrayTemp;
    arrayTemp = [[NSMutableArray alloc] init];
    
    [self logStringsInArray];

}

- (IBAction)buttonAllLowercase:(id)sender {
    for (NSString *stringInArray in arrayUserInput) {
        [arrayTemp addObject:[stringInArray lowercaseString]];
    }
    arrayUserInput = arrayTemp;
    arrayTemp = [[NSMutableArray alloc] init];
    
    [self logStringsInArray];
}

- (IBAction)buttonRemoveWhiteSpace:(id)sender {
    for (NSString *stringInArray in arrayUserInput) {
        [arrayTemp addObject:[stringInArray stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
    }
    arrayUserInput = arrayTemp;
    arrayTemp = [[NSMutableArray alloc] init];
    
    [self logStringsInArray];
}

// delegate functions

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self addUserInputToArray];
    [self logItemLengthInArray];
    return TRUE;
}

// custom functions

-(void)logItemLengthInArray
{
    for (NSString *stringInArray in arrayUserInput) {
        NSLog(@"%lu", (unsigned long)stringInArray.length);
    }
}

-(void)logStringsInArray
{
    for (NSString *stringInArray in arrayUserInput) {
        NSLog(@"%lu, %@", (unsigned long)stringInArray.length, stringInArray);
    }
}

-(void)addUserInputToArray
{
    if (![self.textFieldUserInput.text containsString:@" "]) {
        [arrayUserInput addObject:self.textFieldUserInput.text];
        self.textFieldUserInput.text = @"";
    }
    else    // input invalid
    {
        self.labelError.text = @"Please enter just one word.";
    }
}

@end
