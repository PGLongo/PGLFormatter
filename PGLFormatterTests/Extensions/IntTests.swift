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
}
