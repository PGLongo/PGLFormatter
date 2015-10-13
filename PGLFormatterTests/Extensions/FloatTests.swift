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
        let price:Float = 1234.424
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
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("46.391 yd", Float(42.42).formatLenghtFromMeters())
    }
    
    func testFormatLength(){
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("42.42 m", Float(42.42).formatLenght(.Meter))
        XCTAssertEqual("42.42 km", Float(42.42).formatLenght(.Kilometer))
        XCTAssertEqual("-42.42 m", Float(-42.42).formatLenght(.Meter))
        formatter.unitStyle = .Long
        XCTAssertEqual("42.42 meters", Float(42.42).formatLenght(.Meter))
    }
    
    func testFormatMassFromKilograms(){
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("93.52 lb", Float(42.42).formatMassFromKilograms())
    }
    
    func testFormatMass(){
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Medium
        XCTAssertEqual("42.42 g", Float(42.42).formatMass(.Gram))
        XCTAssertEqual("42.42 kg", Float(42.42).formatMass(.Kilogram))
        XCTAssertEqual("-42.42 g", Float(-42.42).formatMass(.Gram))
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .Long
        XCTAssertEqual("42.42 kilograms", Float(42.42).formatMass(.Kilogram))
    }
    
    func testFormatTime(){
        let formatter = PGLFormatter.timeFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitsStyle = .Abbreviated
        XCTAssertEqual("-42s", (Float(-42)).formatTime()!)
        XCTAssertEqual("42s", (Float(42.42)).formatTime()!)
        XCTAssertEqual("42s", (Float(42)).formatTime()!)
        XCTAssertEqual("1h 10m", Float(4200).formatTime()!)
        
    }


}
