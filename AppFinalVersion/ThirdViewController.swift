import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var eventText: UITextField!
    @IBOutlet var timeText: UIDatePicker!
    var sendingInfo: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SaveButtons(sender: AnyObject) {
        
        //var obj: FirstViewController = FirstViewController(nibName: nil, bundle: nil)
        //var holder: Int = obj.rowToBeEdit
        //Converts NSDate into readable String
        var dateEdit = NSDateFormatter()
        dateEdit.dateFormat = "HH:mm"
        var strDate = dateEdit.stringFromDate(timeText.date)
        
        eventHdl.eventHolder[sendingInfo].timeOne = strDate
        eventHdl.eventHolder[sendingInfo].eventOne = eventText.text
        eventText.text = ""
        
    }
    
    //Gets rid of keyboard when "Return" is clicked
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

