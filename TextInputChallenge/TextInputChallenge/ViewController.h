//
//  ViewController.h
//  TextInputChallenge
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textFieldUserInput;
@property (weak, nonatomic) IBOutlet UILabel *labelError;

@end

