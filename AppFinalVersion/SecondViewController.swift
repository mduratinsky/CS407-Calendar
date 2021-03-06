//
//  SecondViewController.swift
//  AppFinalVersion
//
//  Created by Michael Duratinsky on 10/25/15.
//  Copyright (c) 2015 Michael Duratinsky. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var eventText: UITextField!
    @IBOutlet var timeText: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AddEvent(sender: AnyObject) {
        //Converts NSDate into readable String
        var dateEdit = NSDateFormatter()
        dateEdit.dateFormat = "HH:mm"
        var strDate = dateEdit.stringFromDate(timeText.date)
        
        eventHdl.addEvent(strDate, eventadded: eventText.text)
        
        eventText.text = ""
    }
    
    //Gets rid of keyboard when "Return" is clicked
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

