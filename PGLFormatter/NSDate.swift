//
//  NSDate.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 16/03/15.
//  Copyright (c) 2015 PGL. All rights reserved.
//

import Foundation

public extension NSDate{
    
    /**
    Returns a string representation of self formatted using the PGLFormatter.dateFormatter settings.
    
    :returns: A string representation of date formatted using the PGLFormatter.dateFormatter settings.
    */

    func format() -> String{
        return PGLFormatter.dateFormatter.stringFromDate(self)
    }
    
    /**
    Returns a date representation of a given string interpreted using the PGLFormatter.dateFormatter settings.
    Parameters
    
    :returns: A date representation of string interpreted using the PGLFormatter.dateFormatter settings.
    */
    class func fromString(string: String) -> NSDate? {
        return PGLFormatter.dateFormatter.dateFromString(string)
    }
}