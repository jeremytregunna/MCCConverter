//
//  MCCConverterTests.swift
//  MCCConverterTests
//
//  Created by Jeremy Tregunna on 2016-08-11.
//  Copyright © 2016 Greenshire, Inc. All rights reserved.
//

import XCTest
@testable import MCCConverter

class MCCConverterTests: XCTestCase {
    var mcc: MCCConverter!

    override func setUp() {
        super.setUp()
        mcc = MCCConverter.sharedInstance
    }

    func testFindsUSCodes() {
        XCTAssertEqual("1", mcc.e164("US"))
        XCTAssertEqual("316", mcc.e212("US"))
    }

    func testFindsCostaRica() {
        XCTAssertEqual("506", mcc.e164("CR"))
        XCTAssertEqual("712", mcc.e212("CR"))
    }
}
