//
//  ViewController.swift
//  Core Data Demo
//
//  Created by Rob Percival on 21/04/2015.
//  Copyright (c) 2015 Appfish. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        var context:NSManagedObjectContext = appDel.managedObjectContext!
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as! NSManagedObject
        
        /*
        
        newUser.setValue("Kirsten", forKey: "username")
        
        newUser.setValue("kirstenpass", forKey: "password")
        
        context.save(nil)

        */
        
        var request = NSFetchRequest(entityName: "Users")
        
        request.returnsObjectsAsFaults = false
        
        // To search, we add the predicate
        //request.predicate = NSPredicate(format: "username = %@", "kirsten")
        
        var results = context.executeFetchRequest(request, error: nil)
        
        if results!.count > 0 {
            
            for result: AnyObject in results! {
                
                if let username: String = result.valueForKey("username") as? String {
                
                    println(username)
                    
                    // To update we just call the setValue method..
                    // result.setValue("kirsten", forKey: "username")
                    
                    // To update we just call the deleteObject method..
                    context.deleteObject(result as! NSManagedObject)
                    
                    // To save
                    context.save(nil)
                    
                }
                
            }
            
            
        } else {
            
            println("No results")
            
        }


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

