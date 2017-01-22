//
//  NSNumberFormatter.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 27/02/15.
//  Copyright (c) 2015 Piergiuseppe Longo. All rights reserved.
//

import Foundation

public extension NumberFormatter {

    /// Set the number of digit
    ///
    /// - Parameter precision: set the minimum and the maximum fraction digits to precision
    func setPrecision(_ precision: Int) {
        self.minimumFractionDigits = precision
        self.maximumFractionDigits = precision
    }
}
