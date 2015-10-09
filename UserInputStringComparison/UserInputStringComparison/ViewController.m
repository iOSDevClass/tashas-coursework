//
//  ViewController.m
//  UserInputStringComparison
//
//  Created by Tatiana Jamison on 10/1/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "RefreshColors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonEnterInput:(id)sender {
    NSUInteger userInputStringLength = [self.textUserInput.text length];
    NSUInteger userPasswordInputLength = [self.textUserInputPassword.text length];
    
    [RefreshColors refreshColorsForField:self.textUserInput withSecondField:self.textUserInput andFirstLabel:self.labelPasswordError andSecondLabel:self.labelUsernameError];
    
    if (userInputStringLength > 7 && userPasswordInputLength > 7) {
        self.labelHowLong.text = @"Login valid";
        self.textUserInputPassword.backgroundColor = [UIColor greenColor];
        self.textUserInput.backgroundColor = [UIColor greenColor];
    }
    else {
        self.labelHowLong.text = @"Sorry, username/password invalid.";
        if (userInputStringLength <= 7) {
            self.textUserInput.backgroundColor = [UIColor redColor];
            self.labelUsernameError.text = @"Username too short";
            self.labelUsernameError.textColor = [UIColor redColor];
        }
        if (userPasswordInputLength <= 7) {
            self.textUserInputPassword.backgroundColor = [UIColor redColor];
            self.labelPasswordError.text = @"Password too short";
            self.labelPasswordError.textColor = [UIColor redColor];
        }
    }
}



@end
