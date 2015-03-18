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

}
