//
//  ExSwiftFormatter.swift
//  ExSwift
//
//  Created by Piergiuseppe Longo on 27/02/15.
//  Copyright (c) 2015 pNre. All rights reserved.
//

import UIKit

public class PGLFormatter: NSObject {
    
    public class var numberFormatter: NSNumberFormatter {
        struct Static {
            static let instance : NSNumberFormatter = {
                let formatter = NSNumberFormatter()
                formatter.locale = NSLocale.currentLocale()
                formatter.formatterBehavior = .BehaviorDefault
                formatter.numberStyle = .DecimalStyle
                return formatter
                }()
            
        }
        return Static.instance
    }

    public class var dateFormatter: NSDateFormatter {
        struct Static {
            static let instance : NSDateFormatter = {
                let formatter = NSDateFormatter()
                formatter.locale = NSLocale.currentLocale()
                formatter.dateStyle = .ShortStyle
                formatter.timeStyle = .ShortStyle
                return formatter
                }()
            
        }
        return Static.instance
    }

    public class var byteFormatter: NSByteCountFormatter {
        struct Static {
            static let instance : NSByteCountFormatter = {
                let formatter = NSByteCountFormatter()
                return formatter
                }()
            
        }
        return Static.instance
    }
 
    public class var lenghtFormatter: NSLengthFormatter {
        struct Static {
            static let instance : NSLengthFormatter = {
                let formatter = NSLengthFormatter()
                return formatter
                }()
            
        }
        return Static.instance
    }
    
    


    
}


