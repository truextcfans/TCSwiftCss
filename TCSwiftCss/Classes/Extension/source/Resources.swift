//
//  Resources.swift
//  CCDSwiftCore
//
//  Created by 谢添才 on 2018/1/11.
//

import Foundation


public func resourcesBundleBy(_ str:String? = nil) -> Bundle?{
    if str == nil{
        return Bundle.main
    }
    
    if let bundle = Bundle.main.url(forResource: str, withExtension: "bundle"){
        return Bundle.init(url: bundle)
    }
    return nil
}
public func CCDImage(name:String,bundleName:String? = nil) -> UIImage?{
    return UIImage.init(named: name, in: resourcesBundleBy(bundleName), compatibleWith: nil)
}



public func CCDLocalizedString(_ key: String, comment: String? = nil,bundleName:String? = nil) -> String?{
    if let resourceBundle = resourcesBundleBy(bundleName){
        let localText = NSLocalizedString(key, tableName: bundleName, bundle: resourceBundle, value: "", comment: comment ?? "")
        return localText
    }
    return nil
}
