# PGLFormatter
PGLFormatter is a simple container of NSFormatter and useful functions  
[![Build Status](https://travis-ci.org/PGLongo/PGLFormatter.svg?branch=master)](https://travis-ci.org/PGLongo/PGLFormatter)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

##Reason
Formatters are extremely expensive to create so it's very important to reuse the formatter as much as you can. 

This project is inspired from this [article](http://nshipster.com/nsformatter/) published on [NSHipster](http://nshipster.com/)

If you use the same formatter in the entire project you can set in a single point (e.g. AppDelegate) and then forget about the NSFormatter and simple use the function that PGLFormatter offers, for format() to format Double Float Int (see the example), otherwise you should remember to set the behavior every time
## Add PGLFormatter to your project

#### Cocoapods

To integrate PGLFormatter into your Xcode project using [Cocoapods](http://cocoapods.org/), specify it in your Podfile:

	use_frameworks!
	pod 'PGLFormatter'

#### Carthage

To integrate PGLFormatter into your Xcode project using [Carthage](https://github.com/Carthage/Carthage), specify it in your Cartfile:

	github "PGLongo/PGLFormatter"
	
## Example

### Double Float Int
```swift
let price:Double = 12356789.4200

var formatter = PGLFormatter.numberFormatter
// set the formatter behavior
formatter.numberStyle = .CurrencyStyle

price.format() // $12,356,789.42
```

#### Formatting Byte

```swift
var formatter = PGLFormatter.byteFormatter
// set the formatter behavior

42.formatToByte() // "42 bytes"
42000.formatToByte() // "42 KB"
Int64(42000000000).formatToByte() // 42 GB
```

#### Formatting Lenght

```swift
var formatter = PGLFormatter.lenghtFormatter
// set the formatter behavior

42.formatLenght(.Meter) // 42 m
42.formatLenghtFromMeters() // 45.931 yd
```

#### Formatting Mass

```swift
var formatter = PGLFormatter.massFormatter
// set the formatter behavior

42.formatMass(.Gram) // 42 g
42.formatMassFromKilograms() // 92.594 lb
```

### NSDate
```swift
let calendar = NSCalendar.currentCalendar()
let components = NSDateComponents()
components.year = 1988
components.month = 11
components.day = 30
components.hour = 0
components.minute = 0
components.second = 0
let date = calendar.dateFromComponents(components)

date.format() // 11/30/88, 12:00 AM

```

## Documentation
Documentation is generated and manteined by Cocoapods. You can read the latest documentation at the following [URL](http://cocoadocs.org/docsets/PGLFormatter/latest) and add the docs to [Dash](http://kapeli.com/dash).

- [0.0.1](http://cocoadocs.org/docsets/PGLFormatter/0.0.1/)
- [0.0.2](http://cocoadocs.org/docsets/PGLFormatter/0.0.2/)
- [0.0.3 - latest](http://cocoadocs.org/docsets/PGLFormatter/0.0.3/)

Because of a Cocoapods bug only the [0.0.1](http://cocoadocs.org/docsets/PGLFormatter/0.0.1/) is available, as soon as they fixed it all the docs would be generated.

## Task
- [x] Support Cocoapods
- [x] Support Carthage
- [x] Add installation instruction
- [x] Add other formatters
- [x] Add documentation
- [ ] Implements other useful functions


## License

PGLFormatter is released under the MIT license. See LICENSE for details.