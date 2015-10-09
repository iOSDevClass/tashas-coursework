//
//  ViewController.m
//  PassBy
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    int i = 10;
    int j = 20;
    
    NSLog(@"i has value %d at memory address %p. j has value %d at memory address %p", i, &i, j, &j);
    [self swapByValue:i with:j];
    NSLog(@"After swap by value: i has value %d at memory address %p. j has value %d at memory address %p", i, &i, j, &j);
    [self swapByReference:&i with:&j];
    NSLog(@"After swap by reference: i has value %d at memory address %p. j has value %d at memory address %p", i, &i, j, &j);
    
    NSLog(@"Print %d", !j == 10);
}

-(void)swapByValue:(int)num1 with:(int)num2
{
    int temp = num1;
    num1 = num2;
    num2 = temp;
    
//    NSLog(@"In swapByValue, i means %d", i);
}

-(void)swapByReference:(int *)num1 with:(int *)num2
{
    int temp = *num1;
    *num1 = *num2;
    *num2 = temp;
}

@end
