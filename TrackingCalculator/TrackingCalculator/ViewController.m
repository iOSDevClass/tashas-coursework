//
//  ViewController.m
//  TrackingCalculator
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Tracker.h"

@interface ViewController ()

@end

@implementation ViewController

{
    Tracker *myCalculator;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myCalculator = [[Tracker alloc] init];
}

- (IBAction)buttonAdd:(id)sender {
    [myCalculator addNumber:self.textFieldInputTop.text.doubleValue
                   toNumber:self.textFieldInputBottom.text.doubleValue];
    [self updateResultWithDouble:myCalculator.result];
}

- (IBAction)buttonSubtract:(id)sender {
    [myCalculator subtractFrom:self.textFieldInputTop.text.doubleValue
                      byNumber:self.textFieldInputBottom.text.doubleValue];
    [self updateResultWithDouble:myCalculator.result];
}

- (IBAction)buttonMultiply:(id)sender {
    [myCalculator multiplyNumber:self.textFieldInputTop.text.doubleValue
                        byNumber:self.textFieldInputBottom.text.doubleValue];
    [self updateResultWithDouble:myCalculator.result];
}

- (IBAction)buttonDivide:(id)sender {
    [myCalculator divideNumber:self.textFieldInputTop.text.doubleValue
                      byNumber:self.textFieldInputBottom.text.doubleValue];
    [self updateResultWithDouble:myCalculator.result];
}

- (IBAction)buttonPrintSummary:(id)sender {
    [myCalculator loggingProperties];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake)
    {
        self.labelResultsSummary.text = @"";
        self.textFieldInputBottom.text = @"";
        self.textFieldInputTop.text = @"";
    }
}


-(void)updateResultWithDouble:(double)value
{
    self.labelResultsSummary.text = [NSString stringWithFormat:@"%.2f", value];
}

@end
