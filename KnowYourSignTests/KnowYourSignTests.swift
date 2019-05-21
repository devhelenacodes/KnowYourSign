//
//  KnowYourSignTests.swift
//  KnowYourSignTests
//
//  Created by Helena on 5/21/19.
//  Copyright © 2019 CS. All rights reserved.
//

import XCTest
@testable import KnowYourSign

class KnowYourSignTests: XCTestCase {

    func testGetSigns() {
     var dateComp = DateComponents()
        dateComp.month = 1
        dateComp.day = 20
        let currDate = Calendar.current.date(from: dateComp) as Date?
        
        XCTAssertEqual("Aquarius", KnowYourSign.UserSignViewModel().getSign(from: (currDate)!))
        //XCTAssertEqual("Pisces", KnowYourSign.UserSignViewModel().getSign(from: (currDate)!))
        
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
