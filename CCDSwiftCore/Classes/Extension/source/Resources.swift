//
//  Resources.swift
//  CCDSwiftCore
//
//  Created by 谢添才 on 2018/1/11.
//

import Foundation


extension NSObject{
    public func findResourcesBundle(_ obj:NSObject? = nil) -> Bundle?{
        let bundle = Bundle(for: type(of: obj ?? self))
        let dic = bundle.infoDictionary
        if let bundleUrl = bundle.url(forResource: dic!["CFBundleName"] as? String, withExtension: "bundle"){
            return Bundle.init(url: bundleUrl)
        }
        return nil
    }
    public func findImageFromResourcesBundle(name:String) -> UIImage?{
        return UIImage.init(named: name, in: findResourcesBundle(), compatibleWith: nil)
    }
    public func LocalizedString(_ key: String, comment: String = "") -> String?{
        let bundle = Bundle(for: type(of: self))
        let dic = bundle.infoDictionary
        if let resourceBundle = findResourcesBundle(){
            let localText = NSLocalizedString(key, tableName: dic!["CFBundleName"] as? String, bundle: resourceBundle, value: "", comment: comment)
            return localText
        }
        return nil
    }
    
}

