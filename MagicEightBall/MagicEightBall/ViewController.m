//
//  ViewController.m
//  MagicEightBall
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "NotSoMagicEightBall.h"

@interface ViewController ()

@end

@implementation ViewController

{
    NotSoMagicEightBall *myEightBall;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myEightBall = [[NotSoMagicEightBall alloc] init];
}

- (IBAction)buttonAskQuestion:(id)sender {
    [myEightBall getAnswer];
    [self updateUIElements:[self convertNumberToString:myEightBall.randomNumber]];
}

- (IBAction)buttonRefresh:(id)sender {
    [myEightBall resetEightBall];
    [self updateUIElements:@""];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake)
    {
        [myEightBall getAnswer];
        [self updateUIElements:[self convertNumberToString:myEightBall.randomNumber]];
    }
}

-(void)updateUIElements:(NSString *)updateString
{
    self.labelThings.text = updateString;
    self.imageEightBall.image = myEightBall.answerImage;
    self.labelSpecialMessage.text = myEightBall.answerMessage;
}

-(NSString *)convertNumberToString:(int)number
{
    switch (number) {
        case 1:
            return @"One";
            break;
        case 2:
            return @"Two";
            break;
        default:
            return @"Three";
            break;
    }
}



@end
