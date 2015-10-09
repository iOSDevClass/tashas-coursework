//
//  ViewController.m
//  WeekTwoDayFour
//
//  Created by Tatiana Jamison on 10/8/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // convenience method to construct dictionary. Not recommended because of key-value pairs
//    NSDictionary *newDictionary = @{};
    
    NSMutableDictionary *newDictionary = [[NSMutableDictionary alloc] init];
    
    [newDictionary setObject:@"Test" forKey:@"One"];
    
    NSString *stringFromDict = [newDictionary objectForKey:@"one"];
    
    if (stringFromDict) {
        [stringFromDict uppercaseString];
    }
    
    NSLog(@"%@", [newDictionary objectForKey:@"one"]);
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults]; // get stored data from device
    [defaults setObject:@"Test" forKey:@"One"]; // set information
    [defaults synchronize]; // commit changes
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 10;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return  @"AWESOME";
}

@end
