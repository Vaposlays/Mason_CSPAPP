//
//  Wearable.swift
//  Mason_CSPAPP
//
//  Created by Childers, Mason on 11/20/17.
//  Copyright © 2017 Childers, Mason. All rights reserved.
//

import Foundation
public protocol Wearable
{
    var wearState : Bool {get set}
    func wear() -> Void
    func isWorn() -> Bool
}
