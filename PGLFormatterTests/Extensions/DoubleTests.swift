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

}
