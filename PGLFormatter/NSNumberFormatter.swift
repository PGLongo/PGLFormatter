//
//  NSNumberFormatter.swift
//  ExSwift
//
//  Created by Piergiuseppe Longo on 07/03/15.
//  Copyright (c) 2015 pNre. All rights reserved.
//

import Foundation

public extension NumberFormatter{
    
    
    /**
        Set the number of digit
    */

    func setPrecision(_ precision: Int){
        self.minimumFractionDigits = precision
        self.maximumFractionDigits = precision
    }
}
