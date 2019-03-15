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

public let kOnePiexl = 1 / UIScreen.main.scale

public let kDEVICE_IS_IPHONEX:Bool      =   (UIDevice.current.userInterfaceIdiom == .phone && kSafeAreInsets.bottom > 0)
public let kDEVICE_IS_IPHONE6P:Bool     =   kScreenHeight == 736
public let kDEVICE_IS_IPHONE6:Bool      =   kScreenHeight == 667
public let kDEVICE_IS_IPHONE5:Bool      =   kScreenHeight == 568
public let kDEVICE_IS_IPHONE4:Bool      =   kScreenHeight == 480


public let kNavigationBarHeight:CGFloat     = 44
public let kStatusBarHeight:CGFloat         = (kDEVICE_IS_IPHONEX ? 44 : 20)
public let kTabbBarHeight:CGFloat           = (kDEVICE_IS_IPHONEX ? (49 + 34) : 49)
public let kNavigationBarBottom:CGFloat     = (kDEVICE_IS_IPHONEX ? 88 : 64)

