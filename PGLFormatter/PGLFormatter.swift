//
//  PGLFormatter.swift
//  PGLFormatter
//
//  Created by Piergiuseppe Longo on 27/02/15.
//  Copyright (c) 2015 Piergiuseppe Longo. All rights reserved.
//

import Foundation

/// PGLFormatter is a container of NSFormatter exposed as class var for better reuse and used by the extensions implemented
open class PGLFormatter: NSObject {

    /// NSNumberFormatter
    open class var numberFormatter: NumberFormatter {
        struct Static {
            static let instance: NumberFormatter = {
                let formatter = NumberFormatter()
                formatter.locale = Locale.current
                formatter.formatterBehavior = .default
                formatter.numberStyle = .decimal
                return formatter
                }()
        }
        return Static.instance
    }

    ///  NSNumberFormatter
    open class var currencyFormatter: NumberFormatter {
        struct Static {
            static let instance: NumberFormatter = {
                let formatter = NumberFormatter()
                formatter.locale = Locale.current
                formatter.formatterBehavior = .default
                formatter.numberStyle = .currency
                return formatter
            }()
        }
        return Static.instance
    }

    /// NSDateFormatter
    open class var dateFormatter: DateFormatter {
        struct Static {
            static let instance: DateFormatter = {
                let formatter = DateFormatter()
                formatter.locale = Locale.current
                formatter.dateStyle = .short
                formatter.timeStyle = .short
                return formatter
                }()
        }
        return Static.instance
    }

    /// NSByteCountFormatter
    open class var byteFormatter: ByteCountFormatter {
        struct Static {
            static let instance: ByteCountFormatter = {
                let formatter = ByteCountFormatter()
                return formatter
                }()
        }
        return Static.instance
    }

    /// NSLengthFormatter
    open class var lenghtFormatter: LengthFormatter {
        struct Static {
            static let instance: LengthFormatter = {
                let formatter = LengthFormatter()
                return formatter
                }()
        }
        return Static.instance
    }

    /// NSMassFormatter
    open class var massFormatter: MassFormatter {
        struct Static {
            static let instance: MassFormatter = {
                let formatter = MassFormatter()
                return formatter
                }()

        }
        return Static.instance
    }

    /// TimeFormatter
    open class var timeFormatter: DateComponentsFormatter {
        struct Static {
            static let instance: DateComponentsFormatter = {
                let formatter = DateComponentsFormatter()
                return formatter
                }()
        }
        return Static.instance
    }
}
