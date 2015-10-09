//
//  ViewController.m
//  MathClass
//
//  Created by Tatiana Jamison on 10/1/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "MathClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MathClass *operations = [[MathClass alloc] init];
//    double numberForAddition = operations.currentNumber;
//    double numberForSubtraction = operations.currentNumber;
//    double numberForDivision = operations.currentNumber;
//    double numberForMultiplication = operations.currentNumber;
//    
    double numberForAddition = [MathClass addTwoToNumber:5];
    double numberForSubtraction = [operations subtractByTwo:12];
    double numberForDivision = [MathClass divideByTwo:235];
    double numberForMultiplication = [operations multiplyByTwo:124];
    NSLog(@"%.2f", numberForAddition);
    NSLog(@"%.2f", numberForSubtraction);
    NSLog(@"%.2f", numberForDivision);
    NSLog(@"%.2f", numberForMultiplication);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
