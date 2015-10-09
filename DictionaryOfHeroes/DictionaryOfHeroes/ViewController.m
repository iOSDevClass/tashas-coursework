//
//  ViewController.m
//  DictionaryOfHeroes
//
//  Created by Tatiana Jamison on 10/8/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
//#import "Hero.h"

@interface ViewController ()

{
    NSMutableDictionary *dictionaryHeroes;
    NSString *lastHero;
    NSMutableArray *arrayBackgroundColors;
}

@end

// Default methods

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dictionaryHeroes = [[NSMutableDictionary alloc] init];
    lastHero = @"";
    
    self.textHeroName.delegate = self;
    self.textHeroPower.delegate = self;
    self.textHeroCity.delegate = self;
    self.textHeroGender.delegate = self;
    
    self.textHeroName.tag = 1; // set the tag to a non-default value for tabbing through text fields
    self.textHeroCity.tag = 2; // set the tag to a non-default value for tabbing through text fields
    self.textHeroPower.tag = 3; // set the tag to a non-default value for tabbing through text fields
    self.textHeroGender.tag = 4; // set the tag to a non-default value for tabbing through text fields
    
    arrayBackgroundColors = [[NSMutableArray alloc] initWithObjects:
                             [UIColor whiteColor],
                             [UIColor greenColor],
                             [UIColor blueColor],
                             [UIColor brownColor],
                             [UIColor yellowColor],
                             nil];

}

// IBAction methods

- (IBAction)buttonHeroCreation:(id)sender {
    [self createHero];
}

- (IBAction)buttonLogHeroes:(id)sender {
    for (NSString *key in dictionaryHeroes) {
        NSMutableDictionary *currentHeroDictionary = [dictionaryHeroes objectForKey:key];
        NSLog(@"%@, %@, %@, %@", [currentHeroDictionary objectForKey:@"Name"], [currentHeroDictionary objectForKey:@"City"], [currentHeroDictionary objectForKey:@"Power"], [currentHeroDictionary objectForKey:@"Gender"]);
    }
}

- (IBAction)buttonShowHeroClicked:(id)sender {
    NSArray *arrayOfHeroNames = [self getArrayOfHeroNames];
    
    NSString *randomHeroName = [arrayOfHeroNames objectAtIndex:(arc4random() % [arrayOfHeroNames count])];
    if ([randomHeroName isEqual:lastHero]) {
        randomHeroName = [arrayOfHeroNames objectAtIndex:(arc4random() % [arrayOfHeroNames count])];
    }
    lastHero = randomHeroName;
    
    NSMutableDictionary *currentHeroDictionary = [dictionaryHeroes objectForKey:randomHeroName];
    self.textHeroName.text = [currentHeroDictionary objectForKey:@"Name"];
    self.textHeroCity.text = [currentHeroDictionary objectForKey:@"City"];
    self.textHeroPower.text = [currentHeroDictionary objectForKey:@"Power"];
    self.textHeroGender.text = [currentHeroDictionary objectForKey:@"Gender"];
}

// Delegate methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ([self textFieldShouldEndEditing:textField]) {
        NSInteger nextTag = textField.tag + 1;
        UIResponder *nextResponder = [textField.superview viewWithTag:nextTag];
        if (nextResponder) {
            // there's another text field, so highlight that
            [nextResponder becomeFirstResponder];
        }
        else {
            // no more text fields
            [textField resignFirstResponder];
            [self createHero];
        }
        
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    [UIView animateWithDuration:.66 animations:^{
        self.view.backgroundColor = arrayBackgroundColors[textField.tag];
    }];
    return TRUE;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if ([self userInputIsValidForTextField:textField]) {
        return TRUE;
    } else {
        return false;
    }
}

//-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
//{
//    [UIView animateWithDuration:.66 animations:^{
//        self.view.backgroundColor = [UIColor colorWithHue:(arc4random() % 255 / 254.0) saturation:1 brightness:1 alpha:1];
//    }];
//    return true;
//}

// Custom methods

-(NSArray *)getArrayOfHeroNames
{
    return [dictionaryHeroes allKeys];
}

-(BOOL)userInputIsValidForTextField:(UITextField *)textField
{
    if (textField == self.textHeroName)
    {
        return [self isUserInputValidForName];
    }
    else if (textField == self.textHeroCity)
    {
        return TRUE;
    }
    else if (textField == self.textHeroGender)
    {
        return TRUE;
    }
    else
    {
        return [self isUserInputValidForPower];
    }
    return true;
}

-(void)createHero
{
    if ([self userInputIsValidForTextField:self.textHeroName] && [self userInputIsValidForTextField:self.textHeroCity] && [self userInputIsValidForTextField:self.textHeroPower] && [self userInputIsValidForTextField:self.textHeroGender]) {
        NSMutableDictionary *yoDawg = [[NSMutableDictionary alloc] init]; // create a custom dictionary to store the hero
        
        
        [yoDawg setObject:self.textHeroName.text forKey:@"Name"];   // set the name value for the current hero
        [yoDawg setObject:self.textHeroCity.text forKey:@"City"];   // set the city value for the current hero
        [yoDawg setObject:self.textHeroPower.text forKey:@"Power"]; // set the power value for the current hero
        [yoDawg setObject:self.textHeroGender.text forKey:@"Gender"];   // set the gender value for the current hero
        
        
        BOOL containsKey = [[self getArrayOfHeroNames] containsObject:[yoDawg objectForKey:@"Name"]];
        
        if (!containsKey)
        {
            [dictionaryHeroes setObject:yoDawg forKey:[yoDawg objectForKey:@"Name"]];
            self.labelSummary.text = [NSString stringWithFormat:@"I know %d heroes", [dictionaryHeroes count]];
            self.textHeroName.text = @"";
            self.textHeroPower.text = @"";
            self.textHeroCity.text = @"";
            self.textHeroGender.text = @"";
        }
        else
        {
            [self alertUserOfErrorWithTitle:@"Hero already exists" andMessage:@"Please pick a unique name!"];
        }
    }
}

-(void)alertUserOfErrorWithTitle:(NSString *)titleString andMessage:(NSString *)messageString
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:titleString message:messageString preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:false completion:nil];
    }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

-(BOOL)isUserInputValidForName
{
    NSRange rangeOfCaps = [self.textHeroName.text rangeOfCharacterFromSet:[NSCharacterSet uppercaseLetterCharacterSet]];
    NSRange rangeOfLowercase = [self.textHeroName.text rangeOfCharacterFromSet:[NSCharacterSet lowercaseLetterCharacterSet]];
    if (rangeOfCaps.length && rangeOfLowercase.length) {
        // if the hero name contains AT LEAST one capital letter and AT LEAST ONE lowercase letter, allow it
        return true;
    } else {
        [self alertUserOfErrorWithTitle:@"Invalid name" andMessage:@"Please enter a different name! Valid names have a capital letter and a lowercase letter."];
        return false;
    }
}

-(BOOL)isUserInputValidForPower
{
    if (self.textHeroPower.text.length > 6) {
        if (((NSRange)[self.textHeroPower.text rangeOfCharacterFromSet:[NSCharacterSet decimalDigitCharacterSet]]).length) {
            return TRUE;
        }
        else
        {
            [self alertUserOfErrorWithTitle:@"Numeric value" andMessage:@"Hero powers require at least one number."];
            return FALSE;
        }
    }
    else
    {
        [self alertUserOfErrorWithTitle:@"Length" andMessage:@"Hero powers must be at least 7 characters long."];
        return FALSE;
    }
}

@end
