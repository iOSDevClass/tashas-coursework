//
//  ViewController.m
//  GradingWithUserInput
//
//  Created by Tatiana Jamison on 10/2/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "NameMyGrade.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonSubmit:(id)sender {
    if (self.textNumericGrade.text.length) {
        self.labelLetterGrade.text = [NameMyGrade getLetterGrade:self.textNumericGrade.text.intValue andUpdateLabel:self.labelLetterGrade];
    } else {
        self.labelLetterGrade.text = @"You didn't enter a number.";
        self.labelLetterGrade.textColor = [UIColor blackColor];
    }
    
}

@end
