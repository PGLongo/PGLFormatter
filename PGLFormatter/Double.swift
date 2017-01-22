//
//  Double.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 27/02/15.
//  Copyright (c) 2015 Piergiuseppe Longo. All rights reserved.
//

import Foundation

public extension Double {

    /// Returns a string containing the formatted value of the provided number object.
    ///
    /// - Returns:  A string containing the formatted value of number using the PGLFormatter.numberFormatter settings.
    func format() -> String {
        return PGLFormatter.numberFormatter.string(for: self)!
    }

    /// Converts a byte count into a string without creating an NSNumber object.
    /// - Returns: A string containing the formatted byteCount value using the PGLFormatter.byteFormatter settings.
    func formatToByte() -> String {
        return PGLFormatter.byteFormatter.string(fromByteCount: Int64(self))
    }

    /// Format a number in meters to a localized string with the locale-appropriate unit and an appropriate scale (e.g. 4.3m = 14.1ft in the US locale).
    /// - Returns: A string that combines a value and a unit string appropriate for the PGLFormatter.lenghtFormatter's locale.
    func formatLenghtFromMeters() -> String {
        return PGLFormatter.lenghtFormatter.string(fromMeters: self)
    }

    /// 
    /// Format a combination of a number and an unit to a localized string.
    /// - Parameter unit: The unit used in the resulting length string.
    /// - Returns: A localized string that combines self value and unit.
    /// 
    func formatLenght(_ unit: LengthFormatter.Unit) -> String {
        return PGLFormatter.lenghtFormatter.string(fromValue: self, unit:unit)
    }

    /// Returns a mass string for self value.
    /// - Returns: A string that combines a value and a unit string appropriate for the formatter’s locale.
    func formatMassFromKilograms() -> String {
        return PGLFormatter.massFormatter.string(fromKilograms: self)
    }

    /// 
    /// Returns a properly formatted mass string for self value and unit.
    /// - Parameter unit: The unit used in the resulting mass string.
    /// - Returns: A localized string that combines self value and unit.
    func formatMass(_ unit: MassFormatter.Unit) -> String {
        return PGLFormatter.massFormatter.string(fromValue: self, unit:unit)
    }

    /// Returns a properly formatted time string for self
    /// - Returns: A localized string that combines self.
    func formatTime() -> String? {
        return PGLFormatter.timeFormatter.string(from: self)
    }
}
