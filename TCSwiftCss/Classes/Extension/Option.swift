//
//  Option.swift
//  CCDSwiftCore
//
//  Created by 谢添才 on 2018/8/3.
//

import Foundation

public protocol StringEmpty {
    var isEmpty:Bool{get}
}

extension String:StringEmpty{
   public var isEmpty:Bool{
        get{
            return self == ""
        }
    }
}

public extension Optional where Wrapped == String{
    public var isEmpty:Bool{
        get{
            if self == nil || self! == "" {
                return true
            }
            return false
        }
    }
}
