//
//  UIButtonCss.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit


public func titleCss(_ title:String,_ state:UIControlState = .normal) -> UIButtonCss {
    return {
        $0.setTitle(title, for: state)
    }
}
public func titleColorCss(_ color:UIColor,_ state:UIControlState = .normal) -> UIButtonCss {
    return {
        $0.setTitleColor(color, for: state)
    }
}
public func bgImgCss(_ color:UIColor,_ state:UIControlState = .normal) -> UIButtonCss {
    return {
        $0.setBackgroundImage(color.translateIntoImage(), for: state)
    }
}

public func +=(lhsCube: UIButton, rhsCube:UIImage){
    lhsCube.setBackgroundImage(rhsCube, for: .normal)
}
public func +=(lhsCube: UIButton, rhsCube:String){
    lhsCube.setTitle(rhsCube, for: .normal)
}

public func +=(lhsCube: UIButton, rhsCube:UIFont){
    lhsCube.titleLabel?.font = rhsCube
}
public func +=(lhsCube: UIButton, rhsCube:CGFloat){
    lhsCube.titleLabel?.font = rhsCube.CustomFont
}



extension UIImage{
    public var bgEnableCss:UIButtonCss{
        get{
            return{
                $0.setBackgroundImage(self, for: .disabled)
            }
        }
    }
    public var bgCss:UIButtonCss{
        get{
            return{
                $0.setBackgroundImage(self, for: .normal)
            }
        }
    }
    public var bgHCss:UIButtonCss{
        get{
            return{
                $0.setBackgroundImage(self, for: .highlighted)
            }
        }
    }

}

extension UIFont{
    public var titleFontCss:UIButtonCss{
        get{
            return {
                $0.titleLabel?.font = self
            }
        }
    }
}
extension CGFloat{
    public var titleFontCss:UIButtonCss{
        get{
            return {
                $0.titleLabel?.font = self.CustomFont
            }
        }
    }
    
    public var titleRegularFontCss:UIButtonCss{
        get{
            return {
                $0.titleLabel?.font = self.CustomRegularFont
            }
        }
    }
}




extension String{
    public var titleCss:UIButtonCss{
        get{
            return {
                $0.setTitle(self, for: .normal)
            }
        }
    }
    public var titleHCss:UIButtonCss{
        get{
            return {
                $0.setTitle(self, for: .highlighted)
            }
        }
    }
}
