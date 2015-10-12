//
//  ViewController.m
//  TableViewExample
//
//  Created by Tatiana Jamison on 10/12/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionAutoreverse animations:^{
        self.view.backgroundColor = [UIColor purpleColor];
    } completion:^(BOOL finished) {
      //  self.view.backgroundColor = [UIColor whiteColor];
        nil;
    }];
}

// Delegate methods

// Data source methods
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cellId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = @"Hello"; // [array objectAtIndex:indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // return count of cells in data array
    return 2;
}

@end
