//
//  NSDate.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 16/03/15.
//  Copyright (c) 2015 PGL. All rights reserved.
//

import Foundation

public extension NSDate{
    func format() -> String{
        return PGLFormatter.dateFormatter.stringFromDate(self)
    }
    
    class func fromString(string: String) -> NSDate? {
        return PGLFormatter.dateFormatter.dateFromString(string)
    }
}