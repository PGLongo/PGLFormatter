//
//  Int.swift
//  ExSwift
//
//  Created by pNre on 03/06/14.
//  Copyright (c) 2014 pNre. All rights reserved.
//

import Foundation

public extension Int {
    
    func format() -> String{
        return PGLFormatter.numberFormatter.stringFromNumber(self)!
    }
    
    func formatToByte() -> String {
        return PGLFormatter.byteFormatter.stringFromByteCount(Int64(self))
    }
    
    func formatLenghtFromMeters()->String{
        return PGLFormatter.lenghtFormatter.stringFromMeters(Double(self))
    }
    
    func formatLenght(unit: NSLengthFormatterUnit)->String{
        return PGLFormatter.lenghtFormatter.stringFromValue(Double(self), unit:unit)
    }
    
    func formatMassFromKilograms()->String{
        return PGLFormatter.massFormatter.stringFromKilograms(Double(self))
    }
    
    func formatMass(unit: NSMassFormatterUnit)->String{
        return PGLFormatter.massFormatter.stringFromValue(Double(self), unit:unit)
    }

}

public extension Int64 {
    func formatToByte() -> String {
        return PGLFormatter.byteFormatter.stringFromByteCount(self)
    }

}