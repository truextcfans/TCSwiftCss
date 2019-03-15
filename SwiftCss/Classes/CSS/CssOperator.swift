//
//  CssOperator.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit

public func +<T:NSObject>(lhsCube: @escaping ((T)->()), rhsCube: @escaping ((T)->())) -> (T)->(){
    return {
        lhsCube($0)
        rhsCube($0)
    }
}
public func +<T:NSObject>(lhsCube: [(T)->()], rhsCube: @escaping ((T)->())) -> [(T)->()]{
    var fin = lhsCube
    fin.append(rhsCube)
    return fin
}
public func +<T:NSObject>(lhsCube: @escaping ((T)->()) , rhsCube: [(T)->()]) -> [(T)->()]{
    var fin = rhsCube
    fin.insert(lhsCube, at: 0)
    return fin
}
public func +<T:NSObject>(lhsCube: [(T)->()] , rhsCube: [(T)->()]) -> [(T)->()]{
    var fin = lhsCube
    rhsCube.forEach {
        fin.append($0)
    }
    return fin
}

public func +=<T:NSObject>( lhsCube: T, rhsCube: @escaping ((T)->())){
    lhsCube.setCss(rhsCube)
}

public func +=<T:NSObject>( lhsCube: T, rhsCube:[((T)->())]){
    rhsCube.forEach {
        lhsCube.setCss($0)
    }
}



public func +<T:NSObject>(lhsCube: T, rhsCube: @escaping ((T)->())) -> T{
    lhsCube.setCss(rhsCube)
    return  lhsCube
}

public func +<T:NSObject>(lhsCube: @escaping ((T)->()),rhsCube: T ) -> T{
    rhsCube.setCss(lhsCube)
    return  rhsCube
}


