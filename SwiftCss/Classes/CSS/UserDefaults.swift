//
//  UserDefaults.swift
//  tulip
//
//  Created by 谢添才 on 2017/3/29.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
let kUserDefaults = UserDefaults.standard

public func tkSave(_ key:String,_ objc:Any){
    kUserDefaults.set(objc, forKey: key)
    
    kUserDefaults.synchronize()
}

public func tkDelet(_ key:String){
    kUserDefaults.removeObject(forKey: key)
    kUserDefaults.synchronize()
}

public func tkRead(_ key:String) -> Any? {
    return kUserDefaults.object(forKey: key)
}
