//
//  ViewController.m
//  DaySixChallengeTwo
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
}

- (IBAction)buttonD6:(id)sender {
    [self rollDieWithSides:6];
}

- (IBAction)buttonD8:(id)sender {
    [self rollDieWithSides:8];
}

- (IBAction)buttonD10:(id)sender {
    UIImage *dieTenSideWhite = [UIImage imageNamed:@"d10_white"];
    [self rollDieWithSides:10];
    [self.buttonD10 setBackgroundImage:dieTenSideWhite forState:UIControlStateNormal];
}

- (IBAction)buttonD12:(id)sender {
    [self rollDieWithSides:12];
}

- (IBAction)buttonD20:(id)sender {
    [self rollDieWithSides:20];
}

-(void)rollDieWithSides:(int)sides
{
    int lastSeen = self.labelRandomNumber.text.intValue;
    int getRandom;
    do {
        getRandom = arc4random() % sides + 1;
    } while (getRandom == lastSeen);
    self.labelRandomNumber.text = [NSString stringWithFormat:@"%d", getRandom];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake)
    {
        [self rollDieWithSides:6];
    }
}


@end
