//
//  Double.swift
//  ExSwift
//
//  Created by pNre on 10/07/14.
//  Copyright (c) 2014 pNre. All rights reserved.
//

import Foundation

public extension Double {

    func format() -> String{
        return PGLFormatter.numberFormatter.stringFromNumber(self)!
    }
    
    func formatToByte() -> String {
        return PGLFormatter.byteFormatter.stringFromByteCount(Int64(self))
    }
    
    
    func formatLenghtFromMeters()->String{
        return PGLFormatter.lenghtFormatter.stringFromMeters(self)
    }
    
    func formatLenght(unit: NSLengthFormatterUnit)->String{
        return PGLFormatter.lenghtFormatter.stringFromValue(self, unit:unit)
    }
    
    func formatMassFromKilograms()->String{
        return PGLFormatter.massFormatter.stringFromKilograms(self)
    }
    
    func formatMass(unit: NSMassFormatterUnit)->String{
        return PGLFormatter.massFormatter.stringFromValue(self, unit:unit)
    }

}
