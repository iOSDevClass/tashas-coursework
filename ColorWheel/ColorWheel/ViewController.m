//
//  ViewController.m
//  ColorWheel
//
//  Created by Tatiana Jamison on 10/8/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Colors.h"

@interface ViewController ()

{
    NSMutableArray *arrayColors;
}

@end

@implementation ViewController

// Default methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayColors = [Colors getColorArray];

}

// Delegate methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [arrayColors count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    Colors *color = [arrayColors objectAtIndex:row];
    return color.colorName;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [self updateBackgroundColorForRow:row];
}

// IBAction methods

- (IBAction)buttonRandomizeColor:(id)sender {
    NSInteger randomRow = (NSInteger)(arc4random() % [arrayColors count]);
    [self.pickerViewColors selectRow:randomRow inComponent:0 animated:true];
    
    [self updateBackgroundColorForRow:randomRow];
//    Colors *randomBackgroundColor = [arrayColors objectAtIndex:arc4random() % [arrayColors count]];
//    self.view.backgroundColor = randomBackgroundColor.color;
}

// Custom methods
-(void)updateBackgroundColorForRow:(NSInteger)row
{
    Colors *backgroundColor = [arrayColors objectAtIndex:row];
    self.view.backgroundColor = backgroundColor.color;
}

@end
