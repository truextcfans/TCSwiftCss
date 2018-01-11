//
//  UIViewCss.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit


public func edgeAnitia(_ value:Bool) -> UIViewCss {
    return {
        $0.layer.allowsEdgeAntialiasing = value
    }
}
public func clipsToBounds(_ value:Bool) -> UIViewCss {
    return {
        $0.clipsToBounds = value
    }
}


public func +=(lhsCube: UIView, rhsCube:CGRect){
    lhsCube.frame = rhsCube
}



extension Int{
    public var borderCss:UIViewCss{
        get{
            return CGFloat(self).borderCss
        }
    }
    public var cornerRadiusCss:UIViewCss{
        get{
            return CGFloat(self).cornerRadiusCss
        }
    }

}
extension Double{
    public var borderCss:UIViewCss{
        get{
            return CGFloat(self).borderCss
        }
    }
    public var cornerRadiusCss:UIViewCss{
        get{
            return CGFloat(self).cornerRadiusCss
        }
    }
}

extension CGFloat{
    public var borderCss:UIViewCss{
        get{
            return {
                $0.layer.borderWidth = self
            }
        }
    }
    public var cornerRadiusCss:UIViewCss{
        get{
            return {
                $0.layer.cornerRadius = self
                $0.clipsToBounds = true
            }
        }
    }
    
}

extension UIColor{
    public var borderCss:UIViewCss{
        get{
            return {
                $0.layer.borderColor = self.cgColor
            }
        }
    }
}

extension CGRect{
    public var css:UIViewCss{
        get{
            return {
                $0.frame = self
            }
        }
    }
}

extension CGPoint{
    public var centerCss:UIViewCss{
        get{
            return {
                $0.center = self
            }
        }
    }
}
extension CGSize{
    public var sizeCss:UIViewCss{
        get{
            return {
                $0.frame.size = self
            }
        }
    }
}














