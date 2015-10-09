//
//  ViewController.h
//  DictionaryOfHeroes
//
//  Created by Tatiana Jamison on 10/8/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textHeroName;
@property (weak, nonatomic) IBOutlet UITextField *textHeroCity;
@property (weak, nonatomic) IBOutlet UITextField *textHeroPower;
@property (weak, nonatomic) IBOutlet UITextField *textHeroGender;

@property (weak, nonatomic) IBOutlet UILabel *labelSummary;

@end

