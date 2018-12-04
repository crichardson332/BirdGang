//
//  SecondViewController.swift
//  BirdGang
//
//  Created by Chris Richardson on 12/2/18.
//  Copyright © 2018 Chris Richardson. All rights reserved.
//

import UIKit

class CombosViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        label.text = "\(currentValue)"
    }
}

