//
//  ViewController.m
//  SavingPickerView
//
//  Created by Class on 10/8/15.
//  Copyright © 2015 Class. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *stringArray;
    NSString *saveData;
    NSMutableArray *defaultArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    saveData = @"Save Data";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];//pulling stored area from device
    stringArray = [[defaults objectForKey:saveData] mutableCopy];
    defaultArray = [[NSMutableArray alloc] initWithObjects:
                    @"this is the first message",
                    @"this is the second message",
                    @"this is the final message",
                    nil];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [stringArray count];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [stringArray objectAtIndex:row];
}

- (IBAction)buttonSubmitString:(id)sender
{
    [self addingUserInput];
    }

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self addingUserInput];
    return TRUE;
}

-(void)addingUserInput
{
    [stringArray addObject: self.textFieldUserInput.text];
    [self.pickerViewStrings reloadAllComponents];
    self.textFieldUserInput.text = @"";
    [self.textFieldUserInput resignFirstResponder];
    
}
-(void)saveUserDataToPhone
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];//pulling stored area from device
    [defaults setObject:stringArray forKey:saveData];//setting info
    [defaults synchronize];//committing changes
}

- (IBAction)buttonSaveData:(id)sender
{
    [self saveUserDataToPhone];
    self.labelSaveMessage.text = @"Strings Saved";
}

- (IBAction)buttonResetStrings:(id)sender
{
    [NSUserDefaults resetStandardUserDefaults];//reset to standard user defaults
    stringArray = defaultArray;
    [self.pickerViewStrings reloadAllComponents];
}


@end
