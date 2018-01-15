# CCDSwiftCore

[![CI Status](http://img.shields.io/travis/truextcfans/CCDSwiftCore.svg?style=flat)](https://travis-ci.org/truextcfans/CCDSwiftCore)
[![Version](https://img.shields.io/cocoapods/v/CCDSwiftCore.svg?style=flat)](http://cocoapods.org/pods/CCDSwiftCore)
[![License](https://img.shields.io/cocoapods/l/CCDSwiftCore.svg?style=flat)](http://cocoapods.org/pods/CCDSwiftCore)
[![Platform](https://img.shields.io/cocoapods/p/CCDSwiftCore.svg?style=flat)](http://cocoapods.org/pods/CCDSwiftCore)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CCDSwiftCore is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
  pod 'CCDSwiftCore', :git => 'https://github.com/truextcfans/SwiftCss.git'
```
## Usage
        let v1:UILabel = UILabel()
        let v2:UILabel = UILabel()
        let v3:UILabel = UILabel()
        let v4:UILabel = UILabel()
        
        ## before
        view.addSubview(v1)
        view.addSubview(v2)
        view.addSubview(v3)
        v3.addSubview(v4)
        ## after
        view += [v1,v2,v3]
        v3 += v4
        
        ## before
        v1.backgroundColor = UIColor.red
        v1.font = UIFont.CustomFontOfSize(font: 12)
        v2.backgroundColor = UIColor.red
        v2.font = UIFont.CustomFontOfSize(font: 12)
        ## after
        v1 += UIColor.blue.bgCss
        v1 += 12.fontCss
        v2 += UIColor.red.bgCss
        v2 += 12.fontCss
        ## or
        let lableCss = UIColor.red.bgCss + 12.fontCss
        v1 += lableCss
        v2 += lableCss
        
## Author

truextcfans, xietiancai@thinker.vc

## License

CCDSwiftCore is available under the MIT license. See the LICENSE file for more info.
