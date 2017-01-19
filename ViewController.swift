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
    
    var timer = Timer();
    var scoreTimer = Timer();
    var timerInt = 0;
    var scoreInt = 0;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scoreInt = 0;
        counterLabel.text = String(scoreInt);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func StartStop(_ sender: Any)
    {
        
        if scoreInt == 0 {
            timerInt = 3;
            trafficLight.image = UIImage(named: "TrafficLight");
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)
            
            btnStartStop_clicked.isEnabled = false;
            btnStartStop_clicked.setTitle("", for: [])
            scoreInt = 0;
            counterLabel.text = String(scoreInt); 
        }else{
            
            scoreTimer.invalidate();
        }
        
        
        if timerInt == 0 {
            scoreInt = 0;
            btnStartStop_clicked.setTitle("Restart", for: [])
        }
    }
    
    
    func updateCounter()
    {
        
        timerInt -= 1;
        
        if timerInt == 2 {
            
            trafficLight.image = UIImage(named: "TrafficLight3");
    
        } else if timerInt == 1 {
            
            trafficLight.image = UIImage(named: "TrafficLight2");
            btnStartStop_clicked.setTitle("Stop", for: [])
        
        } else if timerInt == 0 {
            
            trafficLight.image = UIImage(named: "TrafficLight1");
            timer.invalidate();
            btnStartStop_clicked.isEnabled = true;
            scoreTimer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(ViewController.updateScoreTimer), userInfo: nil, repeats: true)
        }
    
        
    }
    
    
    func updateScoreTimer(){
        
        scoreInt += 1;
        counterLabel.text = String(scoreInt);
        
        
    }

}

