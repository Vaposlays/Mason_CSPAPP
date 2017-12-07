//
//  DebugWear.swift
//  Mason_CSPAPP
//
//  Created by Childers, Mason on 11/20/17.
//  Copyright © 2017 Childers, Mason. All rights reserved.
//

import Foundation
public class DebugClothes : wearable
{
    private var  clothesColor :UIColor
    //MARK: Wearable data member
    public var wearableState: Bool
    
    public init()
    {
        self.clothesColor= UIColor()
        self.wearState = false
    }
    
    //MARK:- Wearable methods
    public func wear() -> Void
    {
        print("I am wearing clothes")
        wearState = true
    }
    
    public func isWorn() -> Bool
    {
        if(wearState)
        {
            print("worn")
        }
        else
        {
            print("oops im naked")
        }
        return wearStateÍ
    }
}
