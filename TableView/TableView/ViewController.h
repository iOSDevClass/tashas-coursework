//
//  ViewController.h
//  TableView
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UIView *viewOverallView;
@property (weak, nonatomic) IBOutlet UITableView *tableViewColors;

@property (weak, nonatomic) IBOutlet UITextField *textFieldUserInput;

@end

