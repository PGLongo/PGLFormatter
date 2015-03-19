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
}
