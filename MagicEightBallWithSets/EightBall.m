//
//  EightBall.m
//  MagicEightBallWithSets
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "EightBall.h"

@interface EightBall ()

@property (strong, nonatomic) NSSet *imageSet;

@end

@implementation EightBall

-(void)constructImageSet
{
    self.imageSet = [NSSet setWithObjects:[UIImage imageNamed:@"messageMagicEightBall"],
                     [UIImage imageNamed:@"messageOutlookNotGood"],
                     [UIImage imageNamed:@"messageReplyHazy"],
                     nil];
}

-(UIImage * _Nonnull)getRandomImage
{
    UIImage *anImage = [self.imageSet anyObject];
    return anImage;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self constructImageSet];
    }
    return self;
}

@end
