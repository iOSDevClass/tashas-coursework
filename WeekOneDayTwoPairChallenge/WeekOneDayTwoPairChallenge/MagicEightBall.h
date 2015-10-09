//
//  MagicEightBall.h
//  WeekOneDayTwoPairChallenge
//
//  Created by Tatiana Jamison on 10/6/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MagicEightBall : NSObject

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *message;

+(NSMutableArray *)eightBallObject;


@end
