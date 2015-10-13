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
        let price:Double = 12356789.424
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
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("46.391 yd", Double(42.42).formatLenghtFromMeters())
    }
    
    func testFormatLength(){
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("42.42 m", Double(42.42).formatLenght(.Meter))
        XCTAssertEqual("42.42 km", Double(42.42).formatLenght(.Kilometer))
        XCTAssertEqual("-42.42 m", Double(-42.42).formatLenght(.Meter))
        formatter.unitStyle = .Long
        XCTAssertEqual("42.42 meters", Double(42.42).formatLenght(.Meter))
    }
    
    func testFormatMassFromKilograms(){
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("93.52 lb", Double(42.42).formatMassFromKilograms())
    }
    
    func testFormatMass(){
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("42.42 g", Double(42.42).formatMass(.Gram))
        XCTAssertEqual("42.42 kg", Double(42.42).formatMass(.Kilogram))
        XCTAssertEqual("-42.42 g", Double(-42.42).formatMass(.Gram))
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Long
        XCTAssertEqual("42.42 kilograms", Double(42.42).formatMass(.Kilogram))
    }
    
    func testFormatTime(){
        let formatter = PGLFormatter.timeFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitsStyle = .Abbreviated
        XCTAssertEqual("-42s", (Double(-42)).formatTime()!)
        XCTAssertEqual("42s", (Double(42.42)).formatTime()!)
        XCTAssertEqual("42s", (Double(42)).formatTime()!)
        XCTAssertEqual("1h 10m", Double(4200).formatTime()!)
        
    }


}
