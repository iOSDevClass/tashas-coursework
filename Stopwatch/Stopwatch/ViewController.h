//
//  ViewController.h
//  Stopwatch
//
//  Created by Tatiana Jamison on 10/9/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *labelDisplay;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewSelectCount;
@property (weak, nonatomic) IBOutlet UIButton *buttonCountDown;
@property (weak, nonatomic) IBOutlet UIButton *buttonFullScreen;
@property (weak, nonatomic) IBOutlet UIButton *buttonFullScreenStopCountdown;

@end

