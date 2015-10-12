//
//  ViewController.m
//  TableViewChallenge
//
//  Created by Tatiana Jamison on 10/12/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Colors.h"

@interface ViewController ()

{
    NSMutableArray *colorArray;
    NSIndexPath *lastIndexPath;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    colorArray = [Colors createColorFactoryArray];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    [UIView animateWithDuration:1 animations:^{
//        if (lastIndexPath) {
//            [tableView cellForRowAtIndexPath:lastIndexPath].backgroundColor = [UIColor whiteColor];
//        }
//        [tableView cellForRowAtIndexPath:indexPath].backgroundColor = ((Colors *)[colorArray objectAtIndex:indexPath.row]).color;
//    }];
    
    [UIView animateWithDuration:10.0 delay:2 usingSpringWithDamping:0.1 initialSpringVelocity:.4 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [tableView cellForRowAtIndexPath:indexPath].backgroundColor = ((Colors *)[colorArray objectAtIndex:indexPath.row]).color;
    } completion:NULL];
    
    [UIView animateWithDuration:2.0 delay:0 usingSpringWithDamping:0.1 initialSpringVelocity:.8 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        if (lastIndexPath) {
            [tableView cellForRowAtIndexPath:lastIndexPath].backgroundColor = [UIColor whiteColor];
        }
    } completion:NULL];
    
    lastIndexPath = indexPath;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"whatever";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellIdentifier];
    }
    
    tableView.separatorColor = [UIColor redColor];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %ld", ((Colors *)[colorArray objectAtIndex:indexPath.row]).colorName, (long)indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [colorArray count];
}

@end
