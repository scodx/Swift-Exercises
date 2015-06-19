//
//  ViewController.swift
//  Accessing Web Content
//
//  Created by Oscar on 25/05/15.
//  Copyright (c) 2015 uinik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let url = NSURL(string: "http://www.stackoverflow.com")
        
        //  Closure to handle the task.
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!){
            (data, response, error) in
            
            if( error == nil){
                
                var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
                println(urlContent)
                self.webView.loadHTMLString(urlContent!, baseURL: url)
                
            }else{
                println(error)
            }
            
        }
        
        task.resume()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

