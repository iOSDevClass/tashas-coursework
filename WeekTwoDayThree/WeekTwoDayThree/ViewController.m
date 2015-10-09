//
//  ViewController.m
//  WeekTwoDayThree
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Tracker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    
    Tracker *firstTrackedObject = [[Tracker alloc] initWithHairColor:@"Red" andAge:22];
    [newArray addObject:firstTrackedObject];
    
    Tracker *secondTrackedObject = [[Tracker alloc] initWithHairColor:@"Blue" andAge:32];
    [newArray addObject:secondTrackedObject];
    
    Tracker *thirdTrackedObject = [[Tracker alloc] initWithHairColor:@"Green" andAge:44];
    [newArray addObject:thirdTrackedObject];
    
    Tracker *fourthTrackedObject = [[Tracker alloc] initWithHairColor:@"Yellow" andAge:27];
    [newArray addObject:fourthTrackedObject];
    
//    [newArray addObject:@"Test"];
    
    
    for (Tracker *trackerInArray in newArray) {
        NSLog(@"%@", trackerInArray.hairColor);
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return TRUE;
}

@end
