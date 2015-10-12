//
//  Hero.h
//  ArrayOfHeroes
//
//  Created by Tatiana Jamison on 10/12/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject

@property (nonatomic, strong) NSString *heroName;
@property (nonatomic, strong) NSString *heroPower;
@property (nonatomic) BOOL isGood;

- (instancetype)initWithName:(NSString *)heroName power:(NSString *)heroPower isGood:(BOOL)isGood;

@end
