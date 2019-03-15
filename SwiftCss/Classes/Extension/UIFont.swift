//
//  UIFont.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit

fileprivate let FontNameFor9 = "Helvetica"
fileprivate let FontNameFor9plus = "PingFangSC"

let iosVersion  = (UIDevice.current.systemVersion as NSString).floatValue



extension UIFont{
    public class func CustomRegularFontOfSize(font:CGFloat)->UIFont?{
        return font.CustomRegularFont
    }
    public class func CustomFontOfSize(font:CGFloat)->UIFont?{
        return font.CustomFont
    }
}
extension CGFloat{
    public var CustomMediumFont:UIFont?{
        get{
            if iosVersion<9{
                return UIFont.init(name: "\(FontNameFor9)-Medium", size: self)
            }
            else{
                return UIFont.init(name: "\(FontNameFor9plus)-Medium", size: self)
                
            }
        }
    }
    
    public var CustomRegularFont:UIFont?{
        get{
            if iosVersion<9{
                return UIFont.init(name: "\(FontNameFor9)-Regular", size: self)
            }
            else{
                return UIFont.init(name: "\(FontNameFor9plus)-Regular", size: self)
                
            }
        }
    }
    public var CustomFont:UIFont?{
        get{
            if iosVersion<9{
                return UIFont.init(name: "\(FontNameFor9)-Light", size: self)
            }
            else{
                return UIFont.init(name: "\(FontNameFor9plus)-Light", size: self)
                
            }
        }
    }

}


extension Int{
    public var CustomMediumFont:UIFont?{
        get{
            return CGFloat(self).CustomMediumFont
        }
    }
    
    public var CustomRegularFont:UIFont?{
        get{
          return CGFloat(self).CustomRegularFont
        }
    }
    public var CustomFont:UIFont?{
        get{
            return CGFloat(self).CustomFont
            
        }
    }
}

extension Double{
    public var CustomMediumFont:UIFont?{
        get{
            return CGFloat(self).CustomMediumFont
        }
    }
    public var CustomRegularFont:UIFont?{
        get{
            return CGFloat(self).CustomRegularFont
        }
    }
    public var CustomFont:UIFont?{
        get{
            return CGFloat(self).CustomFont
        }
    }
}
extension Float{
    public var CustomMediumFont:UIFont?{
        get{
            return CGFloat(self).CustomMediumFont
        }
    }
    public var CustomRegularFont:UIFont?{
        get{
            return CGFloat(self).CustomRegularFont
        }
    }
    public var CustomFont:UIFont?{
        get{
            return CGFloat(self).CustomFont
        }
    }
}


