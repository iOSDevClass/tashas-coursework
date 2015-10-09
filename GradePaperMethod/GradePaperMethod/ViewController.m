//
//  ViewController.m
//  GradePaperMethod
//
//  Created by Tatiana Jamison on 9/29/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int numberGrade = 1000000000;
    
    NSString *message = [self checkGradeFromScore:numberGrade];
    
    NSLog(@"Your grade is %@", message);
    
    CABasicAnimation *theAnimation;
    
    // create the animation object, specifying the position property as the key path
    // the key path is relative to the target animation object (in this case a CALayer)
    theAnimation=[CABasicAnimation animationWithKeyPath:@"position"];
    
    // set the fromValue and toValue to the appropriate points
    theAnimation.fromValue=[NSValue valueWithPoint:CGPointMake(74.0, 74.0)];
    theAnimation.toValue=[NSValue valueWithPoint:CGPointMake(566.0,406.0)];
    
    // set the duration to 3.0 seconds
    theAnimation.duration=3.0;
    
    // set a custom timing function
    theAnimation.timingFunction=[CAMediaTimingFunction functionWithControlPoints:0.25f :0.1f :0.25f :1.0f];
}

- (NSString *)checkGradeFromScore:(int)numericScore
{
    NSString *letterGrade;
    
    if (numericScore > 89)
    {
        letterGrade = @"A";
    }
    else if (numericScore > 79)
    {
        letterGrade = @"B";
    }
    else if (numericScore > 69)
    {
        letterGrade = @"C";
    }
    else if (numericScore > 59)
    {
        letterGrade = @"D";
    }
    else
    {
        letterGrade = @"F";
    }
    
    return letterGrade;
}

@end
