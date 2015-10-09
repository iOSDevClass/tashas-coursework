//
//  ViewController.h
//  NextLevelFizzBuzz
//
//  Created by Tatiana Jamison on 10/2/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textUserMin;
@property (weak, nonatomic) IBOutlet UITextField *textUserMax;
@property (weak, nonatomic) IBOutlet UILabel *labelCountFizz;
@property (weak, nonatomic) IBOutlet UILabel *labelCountBuzz;
@property (weak, nonatomic) IBOutlet UILabel *labelCountFizzBuzz;

@end

