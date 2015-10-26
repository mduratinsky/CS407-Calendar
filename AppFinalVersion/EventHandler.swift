import UIKit

var eventHdl: EventHandler = EventHandler()

struct event{
    var timeOne = ""
    var eventOne = ""
}

class EventHandler: NSObject {
    
    var eventHolder = [event]()
    
    func addEvent(time: String, eventadded: String) {
        eventHolder.append(event(timeOne: time, eventOne: eventadded))
    }
    
    func editEventAt(index: Int, time: String, eventadded: String) {
        var obj: event!
        obj.timeOne = time
        obj.eventOne = eventadded
        eventHolder.insert(obj, atIndex: index)
    }
    
}
