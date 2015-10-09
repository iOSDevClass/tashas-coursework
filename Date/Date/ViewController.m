//
//  ViewController.m
//  Date
//
//  Created by Tatiana Jamison on 9/29/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDate *today = [NSDate date];
    NSTimeInterval elapsed = today.timeIntervalSince1970;
    
    NSLog(@"The date is %@. It has been %f seconds since 1970.", today, elapsed + NSTimeIntervalSince1970);
    
    NSLog(@"That is %f minutes, or %f hours, or %f days, or %f years", 1443560824/60.0, 1443560824/60.0/60, 1443560824/60.0/60/24, 1443560824/60.0/60/24/365);
    
//    NSLocale *currentLocale = [NSLocale currentLocale];
//    NSCalendar *usersCalendar = [currentLocale objectForKey:NSLocaleCalendar];

    NSCalendar *usersCalendar = [[NSLocale currentLocale] objectForKey:NSLocaleCalendar];
    
    NSString *calendarIdentifier = usersCalendar.calendarIdentifier;
    
    NSInteger year = [[[[NSCalendar alloc] initWithCalendarIdentifier:calendarIdentifier] components:NSCalendarUnitYear fromDate:today] year];
    
    NSLog(@"The year is %ld.", (long)year);
}

@end
