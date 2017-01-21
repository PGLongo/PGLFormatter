//
//  NSDateTests.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 16/03/15.
//  Copyright (c) 2015 PGL. All rights reserved.
//

import UIKit
import XCTest

class NSDateTests: XCTestCase {

    let calendar = NSCalendar.current
    var components = DateComponents()
    var date: Date!

    override func setUp() {
        super.setUp()
        components.year = 1988
        components.month = 11
        components.day = 30
        components.hour = 0
        components.minute = 0
        components.second = 0

        date = calendar.date(from: components as DateComponents)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFormat() {
        XCTAssertNotNil(PGLFormatter.dateFormatter)
        let result = date.format()
        XCTAssertNotNil(result)
        XCTAssertEqual("11/30/88, 12:00 AM", result, "String mismatch")
    }

    func testFromString() {
        let dateFormatter = PGLFormatter.dateFormatter
        dateFormatter.dateFormat = "MM/dd/yyyy"

        var dateFromString = Date.from(string:"11/30/1988")
        XCTAssertNotNil(dateFromString)
        XCTAssertEqual(date, dateFromString!, "Date mismatch")
        dateFormatter.dateFormat = "MM/dd/yyyy hh:mm"
        dateFromString = Date.from(string:"11/30/1988 00:00")
        XCTAssertNotNil(dateFromString)
        XCTAssertEqual(date, dateFromString!, "Date mismatch")

    }

    func testFromStringWithInvalidFormat() {
        let dateFormatter = PGLFormatter.dateFormatter
        dateFormatter.dateFormat = "MM/dd/yyyy"

        XCTAssertNil(Date.from(string:"11/42/1988"))
        XCTAssertNil(Date.from(string:"42/30/1988"))
        XCTAssertNil(Date.from(string:"30/11/-1988"))
        XCTAssertNil(Date.from(string:"3.14/11/1988"))
        XCTAssertNil(Date.from(string:"30/11/3.14"))
    }

}
