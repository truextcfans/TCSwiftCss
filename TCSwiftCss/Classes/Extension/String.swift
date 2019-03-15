//
//  String.swift
//  CCDSwiftCore
//
//  Created by 谢添才 on 2018/3/8.
//

import Foundation

public extension String{
    public static var genUUID:String{
            return (CFUUIDCreateString(nil, CFUUIDCreate(nil)) as? String) ?? ""
    }
}


public extension String{
  public  func openInBrowser() {
        if let url = URL(string: self) {
           url.openInBrowser()
        }
    }
}

public extension URL{
    public func openInBrowser() {
        if #available(iOS 10, *) {
            UIApplication.shared.open(self, options: [:],
                                      completionHandler: {
                                        (success) in
            })
        } else {
            UIApplication.shared.openURL(self)
        }
    }
}
