//
//  Float.swift
//  ExSwift
//
//  Created by pNre on 04/06/14.
//  Copyright (c) 2014 pNre. All rights reserved.
//

import Foundation

public extension Float {
    
    func format() -> String{
        return PGLFormatter.numberFormatter.stringFromNumber(self)!
    }
    
}

