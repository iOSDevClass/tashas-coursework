//
//  ViewController.m
//  InitAndImages
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Tracker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    Tracker *newTracker = [[Tracker alloc] initWithName:@"Joe"];
    
    [newTracker loggingProperties];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:true];
    
    
}

@end
