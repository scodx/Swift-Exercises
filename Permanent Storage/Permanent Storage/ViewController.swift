//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Oscar on 07/05/15.
//  Copyright (c) 2015 uinik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        NSUserDefaults.standardUserDefaults().setObject("scodx", forKey: "username")
        
        var username = NSUserDefaults.standardUserDefaults().objectForKey("username")! as String
        
        println(username)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

