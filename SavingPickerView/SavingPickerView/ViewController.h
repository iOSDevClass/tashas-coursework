//
//  ViewController.h
//  SavingPickerView
//
//  Created by Class on 10/8/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *textFieldUserInput;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewStrings;
@property (weak, nonatomic) IBOutlet UILabel *labelSaveMessage;


@end

