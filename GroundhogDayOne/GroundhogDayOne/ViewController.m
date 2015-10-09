//
//  ViewController.m
//  GroundhogDayOne
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
    
    NSString *newWord = @"Hello World";
    
    NSLog(@"%p", newWord);
    
    NSString *newVersion = [self capitalizationExpert:newWord];
    
}

-(NSString *)capitalizationExpert:(NSString *)wordToCapitalize
{
    NSLog(@"%p", wordToCapitalize);

    NSString *capitalizedWord = [wordToCapitalize uppercaseString];
    NSLog(@"%p", capitalizedWord);
    
    return capitalizedWord;
}

@end
