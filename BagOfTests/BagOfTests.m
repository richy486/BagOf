//
//  BagOfTests.m
//  BagOfTests
//
//  Created by Richard Adem on 17/06/2015.
//  Copyright (c) 2015 Richard Adem. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "BagOf.h"

@interface BagOfTests : XCTestCase

@end

@implementation BagOfTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBag {

    XCTAssertNoThrow([BagOf bagOfSize:7 getNumbersOfCount:7]);
    
    NSArray *selectedNumbers = [BagOf bagOfSize:7 getNumbersOfCount:7];
    XCTAssertNotNil(selectedNumbers);
    XCTAssertEqual([selectedNumbers count], 7);
    
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:0]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:1]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:2]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:3]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:4]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:5]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:6]]);
    
    XCTAssertThrows([BagOf bagOfSize:1 getNumbersOfCount:2]);
}

- (void)testMultipleBags {

    XCTAssertNoThrow([BagOf bagOfSize:7 getNumbersOfCount:14 withBagCount:2]);
    
    NSArray *selectedNumbers = [BagOf bagOfSize:7 getNumbersOfCount:14 withBagCount:2];
    XCTAssertNotNil(selectedNumbers);
    XCTAssertEqual([selectedNumbers count], 14);
    
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:0]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:1]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:2]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:3]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:4]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:5]]);
    XCTAssertTrue([selectedNumbers containsObject:[NSNumber numberWithInteger:6]]);
    
    XCTAssertFalse([selectedNumbers containsObject:[NSNumber numberWithInteger:7]]);
    XCTAssertFalse([selectedNumbers containsObject:[NSNumber numberWithInteger:8]]);
    XCTAssertFalse([selectedNumbers containsObject:[NSNumber numberWithInteger:9]]);
    XCTAssertFalse([selectedNumbers containsObject:[NSNumber numberWithInteger:10]]);
    XCTAssertFalse([selectedNumbers containsObject:[NSNumber numberWithInteger:11]]);
    XCTAssertFalse([selectedNumbers containsObject:[NSNumber numberWithInteger:12]]);
    XCTAssertFalse([selectedNumbers containsObject:[NSNumber numberWithInteger:13]]);
    
    XCTAssertThrows([BagOf bagOfSize:1 getNumbersOfCount:5 withBagCount:2]);
}

@end
