//
//  ViewController.m
//  DayFour
//
//  Created by Tatiana Jamison on 10/1/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "MathClass.h"

@interface ViewController ()

@end

@implementation ViewController

{
//    int x;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}
- (IBAction)pressedEnter:(id)sender
{
    
    MathClass *mathInstance = [[MathClass alloc] init];
    NSLog(@"%d", mathInstance.currentValue);
    [mathInstance addTwoToThisNumber:2];
    NSLog(@"%d", mathInstance.currentValue);
    
}

@end
