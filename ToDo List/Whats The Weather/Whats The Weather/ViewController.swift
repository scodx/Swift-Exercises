//
//  ViewController.swift
//  Whats The Weather
//
//  Created by Oscar on 26/05/15.
//  Copyright (c) 2015 uinik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var userCity: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var url = NSURL(string: "http://www.weather-forecast.com/locations/Ann-Arbor/forecasts/latest")
        
        if(url != nil){
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: {
                (data, response, error) -> Void in
                if(error == nil){
                    
                }
            })
        }else{
            resultLabel.text = "City not found: " + userCity.text
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findWeather(sender: UIButton) {
    }

}

