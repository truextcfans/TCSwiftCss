# TCSwiftCss

[![CI Status](http://img.shields.io/travis/truextcfans/TCSwiftCss.svg?style=flat)](https://travis-ci.org/truextcfans/TCSwiftCss)
[![Version](https://img.shields.io/cocoapods/v/TCSwiftCss.svg?style=flat)](http://cocoapods.org/pods/TCSwiftCss)
[![License](https://img.shields.io/cocoapods/l/TCSwiftCss.svg?style=flat)](http://cocoapods.org/pods/TCSwiftCss)
[![Platform](https://img.shields.io/cocoapods/p/TCSwiftCss.svg?style=flat)](http://cocoapods.org/pods/TCSwiftCss)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TCSwiftCss is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
  pod 'TCSwiftCss', :git => 'https://github.com/truextcfans/TCSwiftCss.git'
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

TCSwiftCss is available under the MIT license. See the LICENSE file for more info.
