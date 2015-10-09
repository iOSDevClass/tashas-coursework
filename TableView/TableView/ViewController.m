//
//  ViewController.m
//  TableView
//
//  Created by Tatiana Jamison on 10/7/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "Color.h"

@interface ViewController ()

@end

@implementation ViewController

// global variables

{
    NSMutableArray *colorArray;
    Color *previousColor;
}

// default methods

- (void)viewDidLoad {
    [super viewDidLoad];
    colorArray = [Color getColorArray];
}

// IBAction methods

- (IBAction)buttonAddClicked:(id)sender {
    [Color getUIColorFromString:self.textFieldUserInput.text];
}

- (IBAction)buttonEditClicked:(id)sender {
    self.tableViewColors.editing = !self.tableViewColors.editing;
}


// delegate methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [colorArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellIdentifier];
    }
    
    tableView.separatorStyle = 0;
    
    Color *thisColor = [colorArray objectAtIndex:indexPath.row];
    cell.textLabel.text = thisColor.colorName;
    cell.detailTextLabel.text = thisColor.message;
    cell.selectionStyle = UITableViewCellStyleDefault;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (previousColor)
    {
        NSIndexPath *pathOfPreviousColor = [[NSIndexPath alloc] initWithIndex:[colorArray indexOfObject:previousColor]];
        [tableView cellForRowAtIndexPath:pathOfPreviousColor].backgroundColor = [UIColor clearColor];
    }
    self.viewOverallView.backgroundColor = [Color getUIColorFromCustomColor:[colorArray objectAtIndex:indexPath.row]];
    
    [tableView cellForRowAtIndexPath:indexPath].backgroundColor = [Color getUIColorFromCustomColor:[colorArray objectAtIndex:indexPath.row]];
    
    previousColor = colorArray[indexPath.row];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [colorArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
}

@end
