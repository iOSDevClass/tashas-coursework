//
//  ViewController.m
//  ArrayOfHeroes
//
//  Created by Tatiana Jamison on 10/12/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

// Create a text field, labeled hero name, and a button. Add word to array

#import "ViewController.h"
#import "Hero.h"

@interface ViewController ()

{
    NSMutableArray *arrayHeroes;
}

@end

@implementation ViewController

// Default methods

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    arrayHeroes = [[NSMutableArray alloc] init];
    
    [arrayHeroes addObjectsFromArray:@[
                                       [[Hero alloc] initWithName:@"Gandalf" power:@"Powerful Wizard" isGood:TRUE],
                                       [[Hero alloc] initWithName:@"Thor" power:@"Magic Hammer" isGood:TRUE],
                                       [[Hero alloc] initWithName:@"Joker" power:@"Evil laughter" isGood:FALSE]]];
    
    self.tableViewHeroes.backgroundColor = [UIColor purpleColor];
    [self.textFieldInputName becomeFirstResponder];
    
    self.switchGoodOrEvil.onTintColor = [UIColor greenColor];   // hero is good
    self.switchGoodOrEvil.tintColor = [UIColor redColor];   // hero is evil

}

// IBAction methods

- (IBAction)pressSubmitButton:(id)sender {
    [self advanceThroughInput];
}

- (IBAction)pressSwitchGoodOrEvil:(id)sender {
}


// Delegate methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self advanceThroughInput];
    
    return YES;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if (textField.text.length) {
        textField.backgroundColor = [UIColor whiteColor];
        return YES;
    }
    else
    {
        [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:.1 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{
            textField.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:.2];
        } completion:NULL];
        return NO;
    }
}

// Data source methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cellWithSwitch";
    UITableViewCell *cell;
    
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = ((Hero *)[arrayHeroes objectAtIndex:indexPath.row]).heroName;
    cell.detailTextLabel.text = ((Hero *)[arrayHeroes objectAtIndex:indexPath.row]).heroPower;
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if (((Hero *)[arrayHeroes objectAtIndex:indexPath.row]).isGood)
    {
        cell.imageView.image = [UIImage imageNamed:@"icon"];
    }
    else
    {
        cell.imageView.image = [UIImage imageNamed:@"iconEvil"];
    }
    
    
    
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayHeroes count];
}

// Custom methods

-(void)createHero
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    Hero *newHero = [[Hero alloc] initWithName:self.textFieldInputName.text power:self.textFieldInputPower.text isGood:self.switchGoodOrEvil.on];
    [arrayHeroes addObject:newHero];
    NSLog(@"The array contains %d heroes", [arrayHeroes count]);
    
    [self.tableViewHeroes reloadData];
    
    self.textFieldInputName.text = @"";
    self.textFieldInputPower.text = @"";
}

-(BOOL)shouldCreateHero
{
    BOOL nameValid = self.textFieldInputName.text.length;
    BOOL powerValid = self.textFieldInputPower.text.length;
    if (nameValid && powerValid)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(void)advanceThroughInput
{
    if ([self.textFieldInputName isFirstResponder]) {
        [self.textFieldInputPower becomeFirstResponder];
    } else
    {
        [self.textFieldInputPower resignFirstResponder];
        if ([self shouldCreateHero]) {
            [self createHero];
        }
    }
}


@end
