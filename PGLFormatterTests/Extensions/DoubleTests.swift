//
//  ExSwiftDoubleTests.swift
//  ExSwift
//
//  Created by pNre on 10/07/14.
//  Copyright (c) 2014 pNre. All rights reserved.
//

import XCTest

class DoubleTests: XCTestCase {
    

    func testFormat(){
        var price:Double = 12356789.424
        var formatter = PGLFormatter.numberFormatter

        formatter.decimalSeparator = "."
        formatter.numberStyle = .DecimalStyle
        formatter.setPrecision(3)

        XCTAssertEqual("12,356,789.424", price.format())
    
        formatter = PGLFormatter.numberFormatter
        formatter.setPrecision(4)
        XCTAssertEqual("12,356,789.4240", price.format())
        
        formatter = PGLFormatter.numberFormatter
        formatter.decimalSeparator = "."
        formatter.numberStyle = .CurrencyStyle
        
        XCTAssertEqual("$12,356,789.4240", price.format())

    }
    
    func testByteFormat(){

        XCTAssertEqual("42 bytes", Double(42).formatToByte())
        XCTAssertEqual("42 KB", Double(42000).formatToByte())
    }
    
    func testFormatLengthFromMeters(){
        var formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("46.391 yd", Double(42.42).formatLenghtFromMeters())
    }
    
    func testFormatLength(){
        var formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("42.42 m", Double(42.42).formatLenght(.Meter))
        XCTAssertEqual("42.42 km", Double(42.42).formatLenght(.Kilometer))
        XCTAssertEqual("-42.42 m", Double(-42.42).formatLenght(.Meter))
        formatter.unitStyle = .Long
        XCTAssertEqual("42.42 meters", Double(42.42).formatLenght(.Meter))
    }
}
