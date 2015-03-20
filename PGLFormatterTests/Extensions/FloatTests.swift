//
//  FloatTests.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 16/03/15.
//  Copyright (c) 2015 PGL. All rights reserved.
//


import XCTest

class FloatTests: XCTestCase {

    func testFormat(){
        var price:Float = 1234.424
        var formatter = PGLFormatter.numberFormatter
        
        formatter.decimalSeparator = "."
        formatter.numberStyle = .DecimalStyle
        formatter.setPrecision(3)
        
        XCTAssertEqual("1,234.424", price.format())
        
        formatter = PGLFormatter.numberFormatter
        formatter.setPrecision(4)
        XCTAssertEqual("1,234.4240", price.format())
        
        formatter = PGLFormatter.numberFormatter
        formatter.decimalSeparator = "."
        formatter.numberStyle = .CurrencyStyle
        
        XCTAssertEqual("$1,234.4240", price.format())
        
    }
    
    func testByteFormat(){
        
        XCTAssertEqual("42 bytes", Float(42).formatToByte())
        XCTAssertEqual("42 KB", Float(42000).formatToByte())
    }
    
    func testFormatLengthFromMeters(){
        var formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("46.391 yd", Float(42.42).formatLenghtFromMeters())
    }
    
    func testFormatLength(){
        var formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("42.42 m", Float(42.42).formatLenght(.Meter))
        XCTAssertEqual("42.42 km", Float(42.42).formatLenght(.Kilometer))
        XCTAssertEqual("-42.42 m", Float(-42.42).formatLenght(.Meter))
        formatter.unitStyle = .Long
        XCTAssertEqual("42.42 meters", Float(42.42).formatLenght(.Meter))
    }

}
