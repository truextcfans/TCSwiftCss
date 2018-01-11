//
//  UIColor.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit
extension UIColor{
    public func translateIntoImage(frame:CGRect? = CGRect.init(x: 0, y: 0, width: 1, height: 1)) -> UIImage {
        let rect = frame == nil ? CGRect.init(x: 0, y: 0, width: 1, height: 1) : frame!
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(self.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}


extension CAGradientLayer{
    public convenience init(_ colors:[UIColor], _ frame:CGRect = CGRect.init(x: 0, y: 0, width: 1, height: 1)) {
        self.init()
        self.frame = frame
        self.colors =  colors.map{$0.cgColor}
        self.startPoint = CGPoint.init(x: 0, y: 0)
        self.endPoint = CGPoint.init(x: 1, y: 0)
    }
}

extension CALayer{
    public var toImage:UIImage?{
        get{
            UIGraphicsBeginImageContextWithOptions(frame.size, isOpaque, 0)
            render(in: UIGraphicsGetCurrentContext()!)
            let fin = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return fin
        }
    }
    
}

public func UIColorFromRGB(_ rgbValue:Int) -> UIColor {
    return UIColor.init(red:CGFloat((rgbValue & 0xFF0000) >> 16) / 255 , green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255, blue: CGFloat((rgbValue & 0x0000FF) ) / 255, alpha: 1.0)
}
public func CIColorFromRGB(_ rgbValue:Int) -> CIColor {
    return CIColor.init(red:CGFloat((rgbValue & 0xFF0000) >> 16) / 255 , green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255, blue: CGFloat((rgbValue & 0x0000FF) ) / 255, alpha: 1.0)
}
//r g b 0-255
public func UIColorFromRGB(_ r:Int ,_ g:Int ,_ b:Int ,_ alpha:CGFloat = 1.0) -> UIColor {
    return UIColor.init(red:CGFloat(r) / 255 , green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: alpha)
}

extension Int{
    public var color:UIColor{
        return UIColorFromRGB(self)
    }
    public var ciColor:CIColor{
        return CIColorFromRGB(self)
    }
}

