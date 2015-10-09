//
//  Tracker.h
//  InitAndImages
//
//  Created by Tatiana Jamison on 10/5/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tracker : NSObject

@property (strong, nonatomic) NSString *hairColor;

-(void)loggingProperties;

- (instancetype)initWithName:(NSString *)newName;

@end
