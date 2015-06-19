//
//  ViewController.swift
//  Times Tables
//
//  Created by Oscar on 21/04/15.
//  Copyright (c) 2015 uinik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var sliderValue: UISlider!
    
    @IBAction func SliderMoved(sender: AnyObject) {
        table.reloadData()
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let timesTable = Int(sliderValue.value * 10)
        cell.textLabel?.text = String(timesTable * indexPath.row)
        
        return cell
        
    }
    

    
}

