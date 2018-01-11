//
//  Global.swift
//  CCDSwiftCore
//
//  Created by 谢添才 on 2018/1/11.
//

import Foundation
public let sysVersion  = (UIDevice.current.systemVersion as NSString).floatValue
public let kCurrentKeyWindow   = UIApplication.shared.keyWindow
public let kAppDelegate = UIApplication.shared.delegate

public let kSafeAreInsets:UIEdgeInsets = {
    if #available(iOS 11.0, *) {
        return kAppDelegate?.window??.safeAreaInsets ?? UIEdgeInsets.init()
    } else {
        return UIEdgeInsets.init()
    }
}()

public func mainQueue(block:@escaping ()->()){
    DispatchQueue.main.async {
        block()
    }
}
public let cache_key_user_head_path = "cache_key_user_head_path"
public let CGRectZero = CGRect(x: 0, y: 0, width: 0, height: 0)
public let windowsFrame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight)
public let CGPointZero = CGPoint.init(x: 0, y: 0)
public let kScreenHeight = UIScreen.main.bounds.height
public let kScreenWidth  = UIScreen.main.bounds.width
