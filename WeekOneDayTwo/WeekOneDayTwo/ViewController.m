//
//  ViewController.m
//  WeekOneDayTwo
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "PoorNameCrapProject.h"
#import "AnotherCustomClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    PoorNameCrapProject *newTracker = [[PoorNameCrapProject alloc] init];
//    newTracker.hairColor = @"Brown";
//    
//    NSArray *newArray = @[newTracker];
//    
//    NSLog(@"%@", (bim[newArray objectAtIndex:0]).hairColor);
//    
//    newTracker.hairColor = @"Red";
//    
//    NSLog(@"%@", ((PoorNameCrapProject *)[newArray objectAtIndex:0]).hairColor);
//    
//    newTracker = [newTracker init];
//    newTracker.hairColor = @"Blonde";
//    
//    NSLog(@"%@", ((PoorNameCrapProject *)[newArray objectAtIndex:0]).hairColor);
    
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    
    PoorNameCrapProject *trackedObject = [[PoorNameCrapProject alloc] init];
    trackedObject.hairColor = @"Brown";
    [newArray addObject:trackedObject];
    
    trackedObject.hairColor = @"Red";
    [newArray addObject:trackedObject];
    
    trackedObject.hairColor = @"Blonde";
    [newArray addObject:trackedObject];
    
    NSLog(@"%@", ((PoorNameCrapProject *)newArray[0]).hairColor);
    
    
}

@end
