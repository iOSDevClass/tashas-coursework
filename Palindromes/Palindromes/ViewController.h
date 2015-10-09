//
//  ViewController.h
//  Palindromes
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *labelPalindromeEvaluation;
@property (weak, nonatomic) IBOutlet UITextField *textFieldUserInput;

@end

