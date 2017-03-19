//
//  ViewController.swift
//  ProgressBar
//
//  Created by Vuk on 3/19/17.
//  Copyright © 2017 Vuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgresBarView!
    @IBOutlet weak var sliderView: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }



    @IBAction func sliderMoved(_ sender: Any) {
        progressBarView.progress = CGFloat(sliderView.value)
    }

}

