//
//  FirstViewController.swift
//  AppFinalVersion
//
//  Created by Michael Duratinsky on 10/25/15.
//  Copyright (c) 2015 Michael Duratinsky. All rights reserved.
//

import UIKit

//var rowToBeEdit: Int = 0

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var eventText: UITextField!
    @IBOutlet var timeText: UIDatePicker!
    //var rowToBeEdit = 0
    
    @IBOutlet var tableOfEvents: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Refreshing view
    override func viewWillAppear(animated: Bool) {
        tableOfEvents.reloadData()
    }
    
    //delete event function
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.Delete) {
            eventHdl.eventHolder.removeAtIndex(indexPath.row)
            tableOfEvents.reloadData()
        }
    }
    
    //Edit function
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //print(indexPath.row)
        //rowToBeEdit = indexPath.row
        //indexHld.updateNumber(indexPath.row)
        var obj: ThirdViewController = ThirdViewController(nibName: nil, bundle: nil)
        obj.sendingInfo = indexPath.row
        
        self.performSegueWithIdentifier("edit", sender: self)
        //indexHld.updateNumber(1)
        //indexHolder.updateNumber(rowToBeEdit)
        //tableOfEvents.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //if(eventHdl.eventHolder.count = nil) {
         //   return 0
        //} else {
            return eventHdl.eventHolder.count
        //}
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(eventHdl.eventHolder[indexPath.row].timeOne)     \(eventHdl.eventHolder[indexPath.row].eventOne)"
        
        return cell
    }


}

