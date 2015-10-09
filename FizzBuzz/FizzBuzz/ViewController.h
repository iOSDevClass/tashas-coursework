//
//  ViewController.h
//  FizzBuzz
//
//  Created by Tatiana Jamison on 9/30/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *maxLabel;
@property (weak, nonatomic) IBOutlet UILabel *fizzCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *buzzCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *fizzBuzzCountLabel;

+ (BOOL)isNumber:(int)number aMultipleOf:(int)divisor;

@end

