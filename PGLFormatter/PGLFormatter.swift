//
//  ExSwiftFormatter.swift
//  ExSwift
//
//  Created by Piergiuseppe Longo on 27/02/15.
//  Copyright (c) 2015 pNre. All rights reserved.
//

import UIKit

/**
PGLFormatter is a container of NSFormatter exposed as class var for better reuse and used by the extensions implemented
*/
public class PGLFormatter: NSObject {
    
    /**
    NSNumberFormatter
    */
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

    /**
    NSDateFormatter
    */
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

    /**
    NSByteCountFormatter
    */
    public class var byteFormatter: NSByteCountFormatter {
        struct Static {
            static let instance : NSByteCountFormatter = {
                let formatter = NSByteCountFormatter()
                return formatter
                }()
            
        }
        return Static.instance
    }
 
    /**
    NSLengthFormatter
    */
    public class var lenghtFormatter: NSLengthFormatter {
        struct Static {
            static let instance : NSLengthFormatter = {
                let formatter = NSLengthFormatter()
                return formatter
                }()
            
        }
        return Static.instance
    }

    /**
    NSMassFormatter
    */
    public class var massFormatter: NSMassFormatter {
        struct Static {
            static let instance : NSMassFormatter = {
                let formatter = NSMassFormatter()
                return formatter
                }()
            
        }
        return Static.instance
    }

    


    
}


