//
//  ViewController.m
//  WeekOneDayTwoPairChallenge
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "MagicEightBall.h"

@interface ViewController ()

@end

@implementation ViewController

{
    int lastRandomNumber;
    NSMutableArray *imageArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    imageArray = [MagicEightBall eightBallObject];
}

-(int)randomizer
{
    int randomNumber = arc4random() % 3;
    while (randomNumber == lastRandomNumber) {
        randomNumber = arc4random() % 3;
    }
    lastRandomNumber = randomNumber;
    
    return randomNumber;
}

- (IBAction)buttonNewImage:(id)sender {
    int randomVariable = [self randomizer];
    self.imageMagicEightBall.image = ((MagicEightBall *)imageArray[randomVariable]).image;
    self.labelMessage.text = ((MagicEightBall *)imageArray[randomVariable]).message;
    self.labelTitle.text = ((MagicEightBall *)imageArray[randomVariable]).title;
}

@end
