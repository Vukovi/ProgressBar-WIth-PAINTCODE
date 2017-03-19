//
//  ProgresBar.swift
//  ProgressBar
//
//  Created by Vuk on 3/19/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

public class ProgressBar {

    
    //// Frames
    public class func drawProgressBar(frame: CGRect = CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(300), height: CGFloat(16)), progress: CGFloat = 183) {
        
        //var progress: CGFloat = 183
        
        //// Color Declarations
        let novaBoja = UIColor(red: CGFloat(1), green: CGFloat(0.149), blue: CGFloat(0), alpha: CGFloat(1))
        
        //// Progress Border Drawing
        let progressBorderPath = UIBezierPath(roundedRect: CGRect(x: CGFloat(frame.minX + 0.5), y: CGFloat(frame.minY + 0.5), width: CGFloat(floor((frame.width - 0.5) * 0.99666 + 1) - 0.5), height: CGFloat(14.5)), cornerRadius: 7)
        novaBoja.setStroke()
        progressBorderPath.lineWidth = 1
        progressBorderPath.stroke()
        //// Progress Active Drawing
        let progressActivePath = UIBezierPath(roundedRect: CGRect(x: CGFloat(frame.minX + 0.5), y: CGFloat(frame.minY + 0.5), width: progress, height: CGFloat(14.5)), cornerRadius: 7)
        novaBoja.setFill()
        progressActivePath.fill()
    }
    
}
