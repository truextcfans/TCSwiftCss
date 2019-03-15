//
//  UIView.swift
//  CCDSwiftCore
//
//  Created by 谢添才 on 2018/9/28.
//

import Foundation
import SnapKit

public extension UIView{
    
    //移除试图所有高度为kOnePiexl的分割线 注意： 可能会误伤
    @objc public func removeSplitsForce(){
        self.subviews.filter{$0.frame.height == kOnePiexl}.forEach{$0.removeFromSuperview()}
    }
    
    public func removeSplitsBy(tag:Int?){
        self.removeSubViewsBy(tag: tag)
    }
    
    public func removeSubViewsBy(tag:Int?){
        self.subviews.filter{$0.tag == tag}.forEach{$0.removeFromSuperview()}
    }
    
    @objc public func addAllSplit(){
        self.addTopSplit()
        self.addBottomSplit()
    }
    
    @objc public func addTopSplit(){
        self.addTopSplit(leading:0,trailing:0)
    }
    
    @objc public func addTopSplit(leading:CGFloat = 0, trailing:CGFloat = 0){
        self.addSplit(top: 0,leading: leading,trailing: trailing)
    }
    
    @objc public func addBottomSplit(){
        self.addBottomSplit(leading:0,trailing:0)
    }
    
    @objc public func addBottomSplit(leading:CGFloat = 0, trailing:CGFloat = 0){
        self.addSplit(top: nil, leading: leading, trailing: trailing)
    }
    
    public func addSplit(     top:CGFloat?  = nil,
                          leading:CGFloat   = 0,
                         trailing:CGFloat   = 0,
                           height:CGFloat   = kOnePiexl,
                            color:UIColor   = UIColorFromRGB(0xe6e6e6),
                              tag:Int?      = nil
        ){
        
        let splitView = UIView()
        splitView += color
        self += splitView
        if top == nil {
            splitView.snp.makeConstraints {
                $0.leading.equalTo(leading)
                $0.trailing.equalTo(trailing)
                $0.bottom.equalToSuperview()
                $0.height.equalTo(height)
            }
        }else{
            splitView.snp.makeConstraints {
                $0.leading.equalTo(leading)
                $0.trailing.equalTo(trailing)
                $0.top.equalTo(top!)
                $0.height.equalTo(height)
            }
        }
        
        if tag != nil {
            splitView.tag = tag!
        }
    }
}
