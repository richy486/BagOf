//
//  BagOf.h
//  BagOf
//
//  Created by Richard Adem on 17/06/2015.
//  Copyright (c) 2015 Richard Adem. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BagOf : NSObject

+ (NSArray*) bagOfSize:(NSUInteger) bagSize getNumbersOfCount:(NSUInteger) numberCount;
+ (NSArray*) bagOfSize:(NSUInteger) bagSize getNumbersOfCount:(NSUInteger) numberCount withBagCount:(NSUInteger) bagCount;

@end
