//
//  NotSoMagicEightBall.h
//  MagicEightBall
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NotSoMagicEightBall : NSObject

@property (nonatomic) int lastSeen;
@property (nonatomic) int randomNumber;

@property (strong, nonatomic) UIImage * _Nonnull answerImage;
@property (strong, nonatomic) NSString *_Nullable answerMessage;

-(void)getAnswer;
-(void)resetEightBall;

@end
