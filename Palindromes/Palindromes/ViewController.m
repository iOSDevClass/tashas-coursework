//
//  ViewController.m
//  Palindromes
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    NSMutableArray *arrayUserInput;
    int tally;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayUserInput = [[NSMutableArray alloc] init];
    tally = 0;
}

// IBActions

- (IBAction)buttonSubmit:(id)sender {
    if ([self successOnAddingUserInput]) {
        [self checkPalindrome];
    }
}

// Delegate methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ([self successOnAddingUserInput]) {
        [self checkPalindrome];
    }
    return TRUE;
}

// Custom methods

-(void)checkPalindrome
{
    // get the last word added to the array
    NSString *userInput = [arrayUserInput lastObject];
    // get the reversed string
    NSMutableString *reversedUserInput = [self reverseString:userInput];
    
    // compare the strings and update the label
    
    if ([userInput isEqualToString:reversedUserInput])
    {
        self.labelPalindromeEvaluation.text = [NSString stringWithFormat:@"%@ is a palindrome!\nI know %d palindromes and %lu non-palindrome words.", userInput, ++tally, [arrayUserInput count] - tally];
    }
    else
    {
        self.labelPalindromeEvaluation.text = [NSString stringWithFormat:@"%@ is not a palindrome...\nI know %d palindromes and %lu non-palindrome words.", userInput, tally, [arrayUserInput count] - tally];
    }
}

-(BOOL)successOnAddingUserInput
{
    NSString *candidate = self.textFieldUserInput.text;
    if (![arrayUserInput containsObject:candidate])
    {
        [arrayUserInput addObject:candidate];
        return TRUE;
    }
    else
    {
        self.labelPalindromeEvaluation.text = @"I already know that word! Please teach me a new one.";
        return FALSE;
    }
}

-(NSMutableString *)reverseString:(NSString *)stringToReverse
{
    NSMutableString *reversedString;
    reversedString = [[NSMutableString alloc] init];
    NSUInteger charIndex = [stringToReverse length];
    while (charIndex > 0)
    {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[stringToReverse substringWithRange:subStrRange]];
    }
    return reversedString;
}


@end
