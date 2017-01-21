//
//  IntTests.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 16/03/15.
//  Copyright (c) 2015 PGL. All rights reserved.
//

import XCTest

class IntTests: XCTestCase {

    func testFormat() {
        let price: Int = 1234
        var formatter = PGLFormatter.numberFormatter

        formatter.decimalSeparator = "."
        formatter.numberStyle = .decimal
        formatter.setPrecision(3)

        XCTAssertEqual("1,234.000", price.format())

        formatter = PGLFormatter.numberFormatter
        formatter.setPrecision(4)
        XCTAssertEqual("1,234.0000", price.format())

        formatter = PGLFormatter.numberFormatter
        formatter.decimalSeparator = "."
        formatter.numberStyle = .currency

        XCTAssertEqual("$1,234.0000", price.format())

    }

    func testByteFormat() {
        XCTAssertEqual("42 bytes", 42.formatToByte())
        XCTAssertEqual("42 KB", 42000.formatToByte())
        let byte: Int64 = 42000000000
        XCTAssertEqual("42 GB", byte.formatToByte())
    }

    func testFormatLengthFromMeters() {
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("45.931 yd", 42.formatLenghtFromMeters())
    }

    func testFormatLength() {
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("42 m", 42.formatLenght(.meter))
        XCTAssertEqual("42 km", 42.formatLenght(.kilometer))
        XCTAssertEqual("-42 m", (-42).formatLenght(.meter))
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .long
        XCTAssertEqual("42 meters", 42.formatLenght(.meter))
    }

    func testFormatMassFromKilograms() {
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("92.594 lb", 42.formatMassFromKilograms())
    }

    func testFormatMass() {
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("42 g", 42.formatMass(.gram))
        XCTAssertEqual("42 kg", 42.formatMass(.kilogram))
        XCTAssertEqual("-42 g", (-42).formatMass(.gram))
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .long
        XCTAssertEqual("42 kilograms", 42.formatMass(.kilogram))
    }

    func testFormatTime() {
        let formatter = PGLFormatter.timeFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitsStyle = .abbreviated
        XCTAssertEqual("-42s", (Int(-42)).formatTime()!)
        XCTAssertEqual("42s", (Int(42)).formatTime()!)
        XCTAssertEqual("1h 10m", (Int(4200)).formatTime()!)

    }
}
