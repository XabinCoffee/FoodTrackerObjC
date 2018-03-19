//
//  FoodTrackerObjCTests.m
//  FoodTrackerObjCTests
//
//  Created by Xabin Rodriguez on 15/3/18.
//  Copyright © 2018 Xabin Rodriguez. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Meal.h"

@interface FoodTrackerObjCTests : XCTestCase

@end

@implementation FoodTrackerObjCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

-(void) testMeal{
    Meal *meal = [[Meal alloc] init];
    [meal setParams:@"Entxaalailla" andPhoto:nil andRating:5];
    
    //Que haces mirando los tests? Tan cotillas somos?
    
    XCTAssertEqual(meal.name, @"Entxaalailla");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
