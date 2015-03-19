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

}
