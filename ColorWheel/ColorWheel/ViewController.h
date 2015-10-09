//
//  ViewController.h
//  ColorWheel
//
//  Created by Tatiana Jamison on 10/8/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewColors;

@end

