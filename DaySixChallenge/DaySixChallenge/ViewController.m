//
//  ViewController.m
//  DaySixChallenge
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Panera.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Panera *newPanera = [[Panera alloc] init];
    [newPanera orderPepsi];
    [newPanera orderCheesecake];
    [newPanera orderChickenSandwich];
    [newPanera orderSprite];
    
    [newPanera printSummaryMethod];
    
    Panera *expandingPanera = [[Panera alloc] init];
    [expandingPanera printSummaryMethod];
}

@end
