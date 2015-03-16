//
//  ViewController.swift
//  Snowfall
//
//  Created by Alek Festekjian on 11/5/14.
//  Copyright (c) 2014 Alek Festekjian. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    var snowfall = CAEmitterLayer.snowfallEmitter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(snowfall)
        snowfall.beginTime = CACurrentMediaTime()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

