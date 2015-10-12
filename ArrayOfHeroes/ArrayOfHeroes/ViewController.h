//
//  ViewController.h
//  ArrayOfHeroes
//
//  Created by Tatiana Jamison on 10/12/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldInputName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldInputPower;
@property (weak, nonatomic) IBOutlet UIView *cellPrototypeSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *switchGoodOrEvil;

@property (weak, nonatomic) IBOutlet UITableView *tableViewHeroes;

@end

