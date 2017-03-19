//
//  ProgresBarView.swift
//  ProgressBar
//
//  Created by Vuk on 3/19/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

class ProgresBarView: UIView {
    
    private var _innerProgress: CGFloat = 0
    
    var progress: CGFloat {
        get {
            return _innerProgress * bounds.width
        }
        set(newProgres) {
            if newProgres > 1.0 {
                _innerProgress = 1.0
            } else if newProgres < 0.0 {
                _innerProgress = 0.0
            } else {
                _innerProgress = newProgres
            }
            setNeedsDisplay()
        }
        
    }

    override func draw(_ rect: CGRect) {
        ProgressBar.drawProgressBar(frame: bounds, progress: progress)
    }
    
}
