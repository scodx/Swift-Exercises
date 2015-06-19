//
//  SecondViewController.swift
//  ToDo List
//
//  Created by Oscar on 12/05/15.
//  Copyright (c) 2015 uinik. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var newItemText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func addItemButton(sender: UIButton) {
        
        toDoList.append(newItemText.text)
        
        newItemText.text = ""
        
        // Updates the array of items as a permanent storage
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    
    /**
    * Allows to hide the keyboard when the user touches outside of it. :)
    **/
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
    /**
    *   Allows to close the keyboard when the user touches the back key
    **/
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        newItemText.resignFirstResponder()
        return true
    }
    
    
    
    

}

