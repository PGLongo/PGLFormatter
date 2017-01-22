//
//  FloatTests.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 16/03/15.
//  Copyright (c) 2015 PGL. All rights reserved.


import XCTest

class FloatTests: XCTestCase {

    func testFormat() {
        let price: Float = 1234.424
        var formatter = PGLFormatter.numberFormatter

        formatter.decimalSeparator = "."
        formatter.numberStyle = .decimal
        formatter.setPrecision(3)

        XCTAssertEqual("1,234.424", price.format())

        formatter = PGLFormatter.numberFormatter
        formatter.setPrecision(4)
        XCTAssertEqual("1,234.4240", price.format())

        formatter = PGLFormatter.numberFormatter
        formatter.decimalSeparator = "."
        formatter.numberStyle = .currency

        XCTAssertEqual("$1,234.4240", price.format())

    }

    func testByteFormat() {

        XCTAssertEqual("42 bytes", Float(42).formatToByte())
        XCTAssertEqual("42 KB", Float(42000).formatToByte())
    }

    func testFormatLengthFromMeters() {
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("46.391 yd", Float(42.42).formatLenghtFromMeters())
    }

    func testFormatLength() {
        let formatter = PGLFormatter.lenghtFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("42.42 m", Float(42.42).formatLenght(unit: .meter))
        XCTAssertEqual("42.42 km", Float(42.42).formatLenght(unit: .kilometer))
        XCTAssertEqual("-42.42 m", Float(-42.42).formatLenght(unit: .meter))
        formatter.unitStyle = .long
        XCTAssertEqual("42.42 meters", Float(42.42).formatLenght(unit: .meter))
    }

    func testFormatMassFromKilograms() {
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("93.52 lb", Float(42.42).formatMassFromKilograms())
    }

    func testFormatMass() {
        let formatter = PGLFormatter.massFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .medium
        XCTAssertEqual("42.42 g", Float(42.42).formatMass(unit: .gram))
        XCTAssertEqual("42.42 kg", Float(42.42).formatMass(unit: .kilogram))
        XCTAssertEqual("-42.42 g", Float(-42.42).formatMass(unit: .gram))
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitStyle = .long
        XCTAssertEqual("42.42 kilograms", Float(42.42).formatMass(unit: .kilogram))
    }

    func testFormatTime() {
        let formatter = PGLFormatter.timeFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.unitsStyle = .abbreviated
        XCTAssertEqual("-42s", (Float(-42)).formatTime()!)
        XCTAssertEqual("42s", (Float(42.42)).formatTime()!)
        XCTAssertEqual("42s", (Float(42)).formatTime()!)
        XCTAssertEqual("1h 10m", Float(4200).formatTime()!)
    }

    func testFormatCurrency() {
        let formatter = PGLFormatter.currencyFormatter
        XCTAssertNotNil(formatter, "Formatter should be not nil")
        formatter.setPrecision(2)
        formatter.locale = Locale(identifier: "en_US")
        XCTAssertEqual("-$42.00", Float(-42).formatCurrency())
        XCTAssertEqual("$42.00", Float(42).formatCurrency())
        XCTAssertEqual("$4,200.42", Float(4200.42).formatCurrency())
    }

}
