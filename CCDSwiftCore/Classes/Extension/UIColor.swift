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
    func translateIntoImage(frame:CGRect? = CGRect.init(x: 0, y: 0, width: 1, height: 1)) -> UIImage {
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
    convenience init(_ colors:[UIColor], _ frame:CGRect = CGRect.init(x: 0, y: 0, width: 1, height: 1)) {
        self.init()
        self.frame = frame
        self.colors =  colors.map{$0.cgColor}
        self.startPoint = CGPoint.init(x: 0, y: 0)
        self.endPoint = CGPoint.init(x: 1, y: 0)
    }
}

extension CALayer{
    var toImage:UIImage?{
        get{
            UIGraphicsBeginImageContextWithOptions(frame.size, isOpaque, 0)
            render(in: UIGraphicsGetCurrentContext()!)
            let fin = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return fin
        }
    }
    
}
