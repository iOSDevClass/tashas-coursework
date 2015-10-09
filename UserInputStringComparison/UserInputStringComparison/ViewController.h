//
//  ViewController.h
//  UserInputStringComparison
//
//  Created by Tatiana Jamison on 10/1/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textUserInput;
@property (weak, nonatomic) IBOutlet UILabel *labelHowLong;
@property (weak, nonatomic) IBOutlet UITextField *textUserInputPassword;
@property (weak, nonatomic) IBOutlet UILabel *labelUsernameError;
@property (weak, nonatomic) IBOutlet UILabel *labelPasswordError;

@end

