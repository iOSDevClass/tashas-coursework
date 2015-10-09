//
//  ViewController.m
//  GradePapers
//
//  Created by Tatiana Jamison on 9/28/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSString*)createMessage:(NSString*)letterGrade
{
    NSString *awesome = [NSString stringWithFormat:@"You received %@", letterGrade];
    return awesome;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int score = 85;
    NSString *message = @"Invalid score.";
    
    if (score > 100)
    {
        message = [self createMessage:@"an A with extra credit. Good job!"];
    }
    else if (score > 89)
    {
        message = [self createMessage:@"an A!"];
    }
    else if (score > 79)
    {
        message = [self createMessage:@"a B."];
    }
    else if (score > 69)
    {
        message = [self createMessage:@"a C."];
    }
    else if (score > 59)
    {
        message = [self createMessage:@"a D."];
    }
    else if (score > 0)
    {
        message = [self createMessage:@"an F."];
    }
    NSLog(@"%@", message);
}

@end
