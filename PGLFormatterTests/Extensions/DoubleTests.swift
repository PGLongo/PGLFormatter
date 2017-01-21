//
//  ExSwiftDoubleTests.swift
//  ExSwift
//
//  Created by pNre on 10/07/14.
//  Copyright (c) 2014 pNre. All rights reserved.
//

import XCTest

class DoubleTests: XCTestCase {

    func testFormat() {
        let price: Double = 12356789.424
        var formatter = PGLFormatter.numberFormatter

        formatter.decimalSeparator = "."
        formatter.numberStyle = .decimal
        formatter.setPrecision(3)

        XCTAssertEqual("12,356,789.424", price.format())

        formatter = PGLFormatter.numberFormatter
        formatter.setPrecision(4)
        XCTAssertEqual("12,356,789.4240", price.format())

        formatter = PGLFormatter.numberFormatter
        formatter.decimalSeparator = "."
        formatter.numberStyle = .currency

        XCTAssertEqual("$12,356,789.4240", price.format())

    }

    func testByteFormat() {

        XCTAssertEqual("42 bytes", Double(42).formatToByte())
        XCTAssertEqual("42 KB", Double(42000).formatToByte())
    }

    func testFormatLengthFromMeters() {
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("46.391 yd", Double(42.42).formatLenghtFromMeters())
    }

    func testFormatLength() {
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("42.42 m", Double(42.42).formatLenght(.meter))
        XCTAssertEqual("42.42 km", Double(42.42).formatLenght(.kilometer))
        XCTAssertEqual("-42.42 m", Double(-42.42).formatLenght(.meter))
        formatter.unitStyle = .long
        XCTAssertEqual("42.42 meters", Double(42.42).formatLenght(.meter))
    }

    func testFormatMassFromKilograms() {
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("93.52 lb", Double(42.42).formatMassFromKilograms())
    }

    func testFormatMass() {
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("42.42 g", Double(42.42).formatMass(.gram))
        XCTAssertEqual("42.42 kg", Double(42.42).formatMass(.kilogram))
        XCTAssertEqual("-42.42 g", Double(-42.42).formatMass(.gram))
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .long
        XCTAssertEqual("42.42 kilograms", Double(42.42).formatMass(.kilogram))
    }

    func testFormatTime() {
        let formatter = PGLFormatter.timeFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitsStyle = .abbreviated
        XCTAssertEqual("-42s", (Double(-42)).formatTime()!)
        XCTAssertEqual("42s", (Double(42.42)).formatTime()!)
        XCTAssertEqual("42s", (Double(42)).formatTime()!)
        XCTAssertEqual("1h 10m", Double(4200).formatTime()!)

    }

}
