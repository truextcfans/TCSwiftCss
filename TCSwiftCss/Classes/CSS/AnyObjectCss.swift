//
//  AnyObjectCss.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation

extension NSObject{
   public func setCss<T:NSObject>(_ css:((T)->())...){
        if self is T{
            css.forEach{$0(self as! T)}
        }
        else{
            fatalError("类型错误: \(T.self)的css不能赋值给\(self.classForCoder)")
        }
    }
}
