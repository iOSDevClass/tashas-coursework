//
//  FizzBuzzTests.m
//  FizzBuzzTests
//
//  Created by Tatiana Jamison on 9/30/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"


@interface FizzBuzzTests : XCTestCase

@end

@implementation FizzBuzzTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIsNumberAMultipleOf {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCTAssertEqual([ViewController isNumber:3 aMultipleOf:3], YES);
    XCTAssertEqual([ViewController isNumber:5 aMultipleOf:5], YES);
    XCTAssertEqual([ViewController isNumber:0 aMultipleOf:3], NO);
    XCTAssertEqual([ViewController isNumber:0 aMultipleOf:5], NO);
    XCTAssertEqual([ViewController isNumber:26 aMultipleOf:3], NO);
}

@end
