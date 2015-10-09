//
//  Panera.h
//  DaySixChallenge
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Panera : NSObject

//@property (nonatomic) int orderNumber;
//@property (nonatomic) int numberOfDrinks;
//@property (nonatomic) int numberOfMeals;
//@property (nonatomic) int numberOfDesserts;

-(void)orderPepsi;
-(void)orderSprite;
-(void)orderFanta;
-(void)orderTab;

-(void)orderPie;
-(void)orderCupcake;
-(void)orderCheesecake;
-(void)orderCookie;

-(void)orderChickenSandwich;
-(void)orderTurkeySandwich;
-(void)orderRoastBeefSandwich;
+(void)orderSalad;

-(void)printSummaryMethod;

@end
