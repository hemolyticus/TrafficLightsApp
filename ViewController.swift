//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Mel John del Barrio on 20/01/17.
//  Copyright © 2017 Mel John del Barrio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var trafficLight: UIImageView!
    
    @IBOutlet var counterLabel: UILabel!
    
    @IBOutlet var btnStartStop_clicked: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func StartStop(_ sender: Any) {
    }

}

