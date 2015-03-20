//
//  IntTests.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 16/03/15.
//  Copyright (c) 2015 PGL. All rights reserved.
//

import XCTest

class IntTests: XCTestCase {

    
    func testFormat(){
        var price:Int = 1234
        var formatter = PGLFormatter.numberFormatter
        
        formatter.decimalSeparator = "."
        formatter.numberStyle = .DecimalStyle
        formatter.setPrecision(3)
        
        XCTAssertEqual("1,234.000", price.format())
        
        formatter = PGLFormatter.numberFormatter
        formatter.setPrecision(4)
        XCTAssertEqual("1,234.0000", price.format())
        
        formatter = PGLFormatter.numberFormatter
        formatter.decimalSeparator = "."
        formatter.numberStyle = .CurrencyStyle
        
        XCTAssertEqual("$1,234.0000", price.format())
        
    }
    
    func testByteFormat(){
        XCTAssertEqual("42 bytes", 42.formatToByte())
        XCTAssertEqual("42 KB", 42000.formatToByte())
        let byte:Int64 = 42000000000
        XCTAssertEqual("42 GB", byte.formatToByte())
    }

    func testFormatLengthFromMeters(){
        var formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("45.931 yd", 42.formatLenghtFromMeters())
    }
    
    func testFormatLength(){
        var formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("42 m", 42.formatLenght(.Meter))
        XCTAssertEqual("42 km", 42.formatLenght(.Kilometer))
        XCTAssertEqual("-42 m", (-42).formatLenght(.Meter))
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Long
        XCTAssertEqual("42 meters", 42.formatLenght(.Meter))
    }
    
    
    func testFormatMassFromKilograms(){
        var formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("92.594 lb", 42.formatMassFromKilograms())
    }
    
    func testFormatMass(){
        var formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("42 g", 42.formatMass(.Gram))
        XCTAssertEqual("42 kg", 42.formatMass(.Kilogram))
        XCTAssertEqual("-42 g", (-42).formatMass(.Gram))
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Long
        XCTAssertEqual("42 kilograms", 42.formatMass(.Kilogram))
    }
}

