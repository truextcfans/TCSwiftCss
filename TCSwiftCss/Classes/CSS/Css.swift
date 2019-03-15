//
//  Cssa.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit

public typealias Css               = (NSObject)->()
public typealias UIViewCss         = (UIView)->()
public typealias UILabelCss        = (UILabel)->()
public typealias UIButtonCss       = (UIButton)->()
public typealias UITextFieldCss    = (UITextField)->()
public typealias UITextViewCss     = (UITextView)->()
public typealias UIImageCss        = (UIImage)->()
public typealias UIImageViewCss    = (UIImageView)->()


// MARK: backgroundColor titleColor BackgroundImage
public func +=<T:UIView>(lhsCube: T, rhsCube:UIColor?){
    lhsCube.backgroundColor = rhsCube
}

extension UIColor{
   public var bgCss:UIViewCss{
        get{
            return {
                $0.backgroundColor = self
            }
        }
    }

   public var textColorCss:Css{
        get{
            return {
                if $0 is UILabel{
                    ($0 as! UILabel).textColor = self
                    return
                }
                if $0 is UIButton{
                    ($0 as! UIButton).setTitleColor(self, for: .normal)
                    return
                }
                if $0 is UITextField{
                    ($0 as! UITextField).textColor = self
                    return
                }

            }
        }
        
    }
    public var titleHColorCss:UIButtonCss{
        get{
            return {
                $0.setTitleColor(self, for: .highlighted)
            }
        }
        
    }
    
    public var bgImgCss:UIButtonCss{
        get{
            return {
                $0.setBackgroundImage(self.translateIntoImage(), for: .normal)
            }
        }
        
    }
    public var bgImgHCss:UIButtonCss{
        get{
            return {
                $0.setBackgroundImage(self.translateIntoImage(), for: .highlighted)
            }
        }
        
    }
}



// MARK: text placeholder 
public func +=<T:NSObject>(lhsCube: T, rhsCube:String?){
    lhsCube.setCss(rhsCube.css)
}

extension Optional where Wrapped == String{
    public var css:Css{
        get{
            return{
                if let a = $0 as? UILabel{
                    a.text = self
                    return
                }
                if let a = $0 as? UIButton{
                    a.setTitle(self, for: .normal)
                    return
                }
                if let a = $0 as? UITextView{
                    a.text = self
                    return
                }
                if let a = $0 as? UITextField{
                    a.text = self
                    return
                }
            }
        }
    }
    public var placeholderCss:UITextFieldCss{
        return{
            $0.placeholder = self
        }
    }
}
extension String{
    public var css:Css{
        get{
            return{
                if let a = $0 as? UILabel{
                    a.text = self
                    return
                }
                if let a = $0 as? UIButton{
                    a.setTitle(self, for: .normal)
                    return
                }
                if let a = $0 as? UITextView{
                    a.text = self
                    return
                }
                if let a = $0 as? UITextField{
                    a.text = self
                    return
                }
            }
        }
    }
    public var placeholderCss:UITextFieldCss{
        return{
            $0.placeholder = self
        }
    }
}



