//
//  Panera.m
//  DaySixChallenge
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Panera.h"

@interface Panera ()

@property (nonatomic) int orderNumber;
@property (nonatomic) int numberOfDrinks;
@property (nonatomic) int numberOfMeals;
@property (nonatomic) int numberOfDesserts;

@end

@implementation Panera

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.orderNumber = 1000;
        self.numberOfDesserts = 0;
        self.numberOfDrinks = 0;
        self.numberOfMeals = 0;
    }
    return self;
}

// 4 drinks, 4 desserts, 4 other menu items

-(void)orderPepsi
{
    NSLog(@"Pepsi up! - Order %d, Drink %d", ++self.orderNumber, ++self.numberOfDrinks);
}

-(void)orderSprite
{
    NSLog(@"Sprite up! - Order %d, Drink %d", ++self.orderNumber, ++self.numberOfDrinks);
}

-(void)orderFanta
{
    NSLog(@"Fanta up! - Order %d, Drink %d", ++self.orderNumber, ++self.numberOfDrinks);
}

-(void)orderTab
{
    NSLog(@"Tab up! - Order %d, Drink %d", ++self.orderNumber, ++self.numberOfDrinks);
}

-(void)orderPie
{
    NSLog(@"Pie up! - Order %d, Dessert %d", ++self.orderNumber, ++self.numberOfDesserts);
}

-(void)orderCupcake
{
    NSLog(@"Cupcake up! - Order %d, Dessert %d", ++self.orderNumber, ++self.numberOfDesserts);
}

-(void)orderCheesecake
{
    NSLog(@"Cheesecake up! - Order %d, Dessert %d", ++self.orderNumber, ++self.numberOfDesserts);
}

-(void)orderCookie
{
    NSLog(@"Cookie up! - Order %d, Dessert %d", ++self.orderNumber, ++self.numberOfDesserts);
}

-(void)orderChickenSandwich
{
    NSLog(@"Chicken sandwich up! - Order %d, Meal %d", ++self.orderNumber, ++self.numberOfMeals);
}

-(void)orderTurkeySandwich
{
    NSLog(@"Turkey sandwich up! - Order %d, Meal %d", ++self.orderNumber, ++self.numberOfMeals);
}

-(void)orderRoastBeefSandwich
{
    NSLog(@"Roast beef sandwich up! - Order %d, Meal %d", ++self.orderNumber, ++self.numberOfMeals);
}

-(void)orderSalad
{
    NSLog(@"Salad up! - Order %d, Meal %d", ++self.orderNumber, ++self.numberOfMeals);
}

-(void)printSummaryMethod
{
    NSLog(@"\n%d order(s):\n%d meal(s)\n%d drink(s)\n%d dessert(s)", self.orderNumber, self.numberOfMeals, self.numberOfDrinks, self.numberOfDesserts);
}


@end
