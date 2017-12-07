//
//  DrawingView.swift
//  Mason_CSPAPP
//
//  Created by Childers, Mason on 12/5/17.
//  Copyright © 2017 Childers, Mason. All rights reserved.
//

import UIKit

public class DrawingView: UIView {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
 
    
    override public func draw(_ rect: CGRect)
    {
        //Drawing code
        drawStickFigure().stroke()
        drawTurtle()
        drawHappyTree()
    }
    
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.magenta.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint(x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        
        return stickFigure
    }
    
    public func drawHappyTree() -> Void
    {
        let bobRoss = UIBezierPath()
        
        bobRoss.move(to: CGPoint(x: 80, y: 50))
        bobRoss.addLine(to: CGPoint(x: 150, y: 200))
        bobRoss.addLine(to: CGPoint(x: 10, y: 200))
        
    }
    
    public func drawTurtle() -> Void
    {
        let drawTurtle = UIBezierPath()
        
        
    }
}