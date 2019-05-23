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
        dateComp.month = 8
        dateComp.day = 20
        let currDate = Calendar.current.date(from: dateComp) as Date?
        
        XCTAssertEqual("Leo", KnowYourSign.UserSignViewModel().getSign(from: (currDate)!))
        
    }


}
