//
//  SecondViewController.swift
//  BirdGang
//
//  Created by Chris Richardson on 12/2/18.
//  Copyright © 2018 Chris Richardson. All rights reserved.
//

import UIKit
import Charts


class CombosViewController: UIViewController {
    
    @IBOutlet weak var number1: UISlider!
    @IBOutlet weak var barChart: BarChartView!
    
    @IBAction func renderCharts() {
        barChartUpdate()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        barChartUpdate()
    }
    
    func barChartUpdate () {
        //future home of bar chart code
    }
    
}

