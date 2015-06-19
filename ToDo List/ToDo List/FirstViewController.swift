//
//  FirstViewController.swift
//  ToDo List
//
//  Created by Oscar on 12/05/15.
//  Copyright (c) 2015 uinik. All rights reserved.
//

import UIKit


var toDoList = [String]()


class FirstViewController: UIViewController, UITableViewDelegate  {

    @IBOutlet var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if(NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil){
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as [String]
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return toDoList.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        //  we check if the edit style is delete
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            toDoList.removeAtIndex(indexPath.row)
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        }
    }
    

    
    
    
    
    
    
    
    
    


}
















