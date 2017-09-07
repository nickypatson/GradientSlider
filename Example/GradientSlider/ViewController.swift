//
//  ViewController.swift
//  GradientSlider
//
//  Created by nickypatson on 09/07/2017.
//  Copyright (c) 2017 nickypatson. All rights reserved.
//

import UIKit
import GradientSlider


class ViewController: UIViewController {

    @IBOutlet weak var customColorSlider: CustomColorSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customColorSlider.defaultValue = 0.9
        customColorSlider.actionBlock={slider,newvalue in
            
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

