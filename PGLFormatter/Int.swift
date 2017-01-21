//
//  Int.swift
//  ExSwift
//
//  Created by pNre on 03/06/14.
//  Copyright (c) 2014 pNre. All rights reserved.
//

import Foundation

public extension Int {

    /**
    Returns a string containing the formatted value of the provided number object.
    
    :returns: A string containing the formatted value of number using the PGLFormatter.numberFormatter settings.
    */
    func format() -> String {

        return PGLFormatter.numberFormatter.string(for: self)!
    }

    /**
    Converts a byte count into a string without creating an NSNumber object.
    
    :returns: A string containing the formatted byteCount value using the PGLFormatter.byteFormatter settings.
    */
    func formatToByte() -> String {
        return PGLFormatter.byteFormatter.string(fromByteCount: Int64(self))
    }

    /**
    Format a number in meters to a localized string with the locale-appropriate unit and an appropriate scale (e.g. 4.3m = 14.1ft in the US locale).
    
    :returns: A string that combines a value and a unit string appropriate for the PGLFormatter.lenghtFormatter's locale.
    */
    func formatLenghtFromMeters() -> String {
        return PGLFormatter.lenghtFormatter.string(fromMeters: Double(self))
    }

    /**
    Format a combination of a number and an unit to a localized string.
    :param unit The unit used in the resulting length string.
    
    :returns: A localized string that combines self value and unit.
    */
    func formatLenght(_ unit: LengthFormatter.Unit) -> String {
        return PGLFormatter.lenghtFormatter.string(fromValue: Double(self), unit:unit)
    }

    /**
    Returns a mass string for self value.
    
    :returns: A string that combines a value and a unit string appropriate for the formatter’s locale.
    */
    func formatMassFromKilograms() -> String {
        return PGLFormatter.massFormatter.string(fromKilograms: Double(self))
    }

    /**
    Returns a properly formatted mass string for self value and unit.
    :param: unit The unit used in the resulting mass string.
    
    :returns: A localized string that combines self value and unit.
    */
    func formatMass(_ unit: MassFormatter.Unit) -> String {
        return PGLFormatter.massFormatter.string(fromValue: Double(self), unit:unit)
    }

    /**
    Returns a properly formatted time string for self
    :returns: A localized string that combines self.
    */
    func formatTime() -> String? {
        return PGLFormatter.timeFormatter.string(from: Double(self))
    }
}

public extension Int64 {
    /**
    Converts a byte count into a string without creating an NSNumber object.
    
    :returns: A string containing the formatted byteCount value using the PGLFormatter.byteFormatter settings.
    */
    func formatToByte() -> String {
        return PGLFormatter.byteFormatter.string(fromByteCount: self)
    }

}
