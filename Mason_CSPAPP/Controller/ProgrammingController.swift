//
//  ProgrammingController.swift
//  Mason_CSPAPP
//
//  Created by Childers, Mason on 10/26/17.
//  Copyright © 2017 Childers, Mason. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingController: UIViewController {
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        let gameScene = StartScene(size:view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
    }
}
