//
//  BagOf.m
//  BagOf
//
//  Created by Richard Adem on 17/06/2015.
//  Copyright (c) 2015 Richard Adem. All rights reserved.
//

#import "BagOf.h"

@implementation BagOf

+ (NSArray*) bagOfSize:(NSUInteger) bagSize getNumbersOfCount:(NSUInteger) numberCount {
    return [self bagOfSize:bagSize getNumbersOfCount:numberCount withBagCount:1];
}

+ (NSArray*) bagOfSize:(NSUInteger) bagSize getNumbersOfCount:(NSUInteger) numberCount withBagCount:(NSUInteger) bagCount {
    
    NSUInteger totalBagCount = bagSize * bagCount;

    NSAssert(numberCount <= totalBagCount, @"Number count must be lower or equal to bag size * bag count");
    
    
    NSMutableArray *bag = [[NSMutableArray alloc] initWithCapacity:totalBagCount];
    for (NSUInteger i = 0; i < bagCount; ++i) {
        for (NSUInteger j = 0; j < bagSize; ++j) {
            [bag addObject:[NSNumber numberWithInteger:j]];
        }
    }
    
    NSMutableArray *selectedNumbers = [[NSMutableArray alloc] initWithCapacity:numberCount];
    for (NSUInteger i = 0; i < numberCount; ++i) {
        NSUInteger index = arc4random()%[bag count];
        
        NSNumber *selectedNumber = bag[index];
        [selectedNumbers addObject:selectedNumber];
        
        [bag removeObjectAtIndex:index];
    }
    
    return [NSArray arrayWithArray:selectedNumbers];
}

@end
