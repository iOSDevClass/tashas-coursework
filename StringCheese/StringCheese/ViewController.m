//
//  ViewController.m
//  StringCheese
//
//  Created by Tatiana Jamison on 9/30/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *biggerColor = [UIColor colorWithRed:0.12 green:0.52 blue:0.10 alpha:1.0];
    UIColor *smallerColor = [UIColor colorWithRed:0.80 green:0.19 blue:0.16 alpha:1.0];
    UIColor *neutralColor = [UIColor blueColor];
    
    NSString *firstWord = @"Something longer";
    NSString *secondWord = @"Something else";
    int diff = (int)firstWord.length - (int)secondWord.length;
    NSString *result;
    UIColor *firstColor;
    UIColor *secondColor;
    
    if (diff > 0) {
        result = @">";
        firstColor = biggerColor;
        secondColor = smallerColor;
    }
    else if (diff < 0)
    {
        result = @"<";
        firstColor = smallerColor;
        secondColor = biggerColor;
    }
    else
    {
        result = @"==";
        firstColor = neutralColor;
        secondColor = neutralColor;
    }
    
    self.firstWordLabelChanged.text = firstWord;
    self.firstWordLabelChanged.textColor = firstColor;
    self.firstWordLabelChanged.layer.borderColor = firstColor.CGColor;
    self.firstWordLabelChanged.layer.borderWidth = 1.0;
    
    self.secondWordLabel.text = secondWord;
    self.secondWordLabel.textColor = secondColor;
    self.secondWordLabel.layer.borderColor = secondColor.CGColor;
    self.secondWordLabel.layer.borderWidth = 1.0;
    
    self.theResultLabel.text = result;
    self.resultDetailLabel.text = [NSString stringWithFormat:@"... by %d characters", abs(diff)];
}

@end
