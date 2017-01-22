//
//  NSDate.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 27/02/15.
//  Copyright (c) 2015 Piergiuseppe Longo. All rights reserved.
//

import Foundation

public extension Date {

    ///Returns a string representation of self formatted using the PGLFormatter.dateFormatter settings.
    /// - Returns: A string representation of date formatted using the PGLFormatter.dateFormatter settings.
    func format() -> String {
        return PGLFormatter.dateFormatter.string(from: self)
    }

    /// Returns a date representation of a given string interpreted using the PGLFormatter.dateFormatter settings.
    /// - Parameter string: string to format
    /// - Returns: A date representation of string interpreted using the PGLFormatter.dateFormatter settings.
    static func from(string: String) -> Date? {
        return PGLFormatter.dateFormatter.date(from: string)
    }
}
