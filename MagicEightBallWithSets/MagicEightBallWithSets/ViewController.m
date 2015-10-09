//
//  ViewController.m
//  MagicEightBallWithSets
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "EightBall.h"

@interface ViewController ()

@end

@implementation ViewController

{
    EightBall *myEightBall;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myEightBall = [[EightBall alloc] init];
    
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake)
    {
        self.imageMain.image = [myEightBall getRandomImage];
    }
}

@end
