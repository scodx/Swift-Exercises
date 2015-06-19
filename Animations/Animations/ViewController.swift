//
//  ViewController.swift
//  Animations
//
//  Created by Rob Percival on 27/02/2015.
//  Copyright (c) 2015 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    @IBOutlet var alienImage: UIImageView!

    @IBAction func updateImage(sender: AnyObject) {
        
        if counter == 5 {
            
            counter = 1
            
        } else {
        
            counter++
            
        }
        
        alienImage.image = UIImage(named: "frame\(counter).png")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        alienImage.center = CGPointMake(alienImage.center.x - 400, alienImage.center.y)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.alienImage.center = CGPointMake(self.alienImage.center.x + 400, self.alienImage.center.y)
        })
    }
    
    
    


}

