//
//  ViewController.m
//  Stopwatch
//
//  Created by Tatiana Jamison on 10/9/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
//#import <CoreFoundation/CoreFoundation.h>

@interface ViewController ()

{
    NSTimer *timer;
}

@end

@implementation ViewController

// Default methods

- (void)viewDidLoad {
    [super viewDidLoad];
}

// Delegate methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 60;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%ld", (long)row];
}


// IBAction methods

- (IBAction)pressCountDownButton:(id)sender {
    [self countDown];
}

- (IBAction)pressFullScreenReset:(id)sender {
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.buttonFullScreen.hidden = YES;
    [self toggleHidden];
}

- (IBAction)pressFullScreenStopCountdown:(id)sender {
    [self toggleHidden];
    [timer invalidate];
}

// Custom methods

-(void)countDown
{
    [self.labelDisplay setText:[NSString stringWithFormat:@"%02d:%02d", [self.pickerViewSelectCount selectedRowInComponent:0], [self.pickerViewSelectCount selectedRowInComponent:1]]];
    
    if (!timer.valid)
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(decrementLabel) userInfo:nil repeats:YES];
        [self toggleHidden];
    }
    self.buttonFullScreenStopCountdown.hidden = NO;
}

-(void)decrementLabel
{
    NSArray *labelComponents = [self.labelDisplay.text componentsSeparatedByString:@":"];
    NSInteger lastSecondValue = ((NSString *)labelComponents[1]).intValue;
    NSInteger lastMinuteValue = ((NSString *)labelComponents[0]).intValue;
    
    if (lastMinuteValue > 0) {
        if (lastSecondValue == 0) {
            [self.labelDisplay setText:[NSString stringWithFormat:@"%02d:%02d", lastMinuteValue - 1, 59]];
        } else {
            [self.labelDisplay setText:[NSString stringWithFormat:@"%02d:%02d", lastMinuteValue, lastSecondValue - 1]];
        }
    }
    else
    {
        if (lastSecondValue > 1)
        {
            // still counting down
            [self.labelDisplay setText:[NSString stringWithFormat:@"%02d:%02d", lastMinuteValue, lastSecondValue - 1]];
        }
        else if (lastSecondValue == 1)
        {
            // our last value was 1, so we go to 0 with this activation
            [self.labelDisplay setText:[NSString stringWithFormat:@"%d", lastSecondValue - 1]];
            self.view.backgroundColor = [UIColor redColor];
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
            [timer invalidate];
            self.buttonFullScreen.hidden = NO;
            self.buttonFullScreenStopCountdown.hidden = YES;
        }
    }
        
    
}

-(void)toggleHidden
{
    self.pickerViewSelectCount.hidden = !self.pickerViewSelectCount.hidden;
    self.buttonCountDown.hidden = !self.buttonCountDown.hidden;
    self.labelDisplay.hidden = !self.labelDisplay.hidden;
}

@end
