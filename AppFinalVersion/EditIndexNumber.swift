import UIKit

var indexHld: EditIndexNumber = EditIndexNumber()

struct number{
    var pos = 0
}

class EditIndexNumber: NSObject {
    
    var indexHolder = 0
    
    func updateNumber(index: Int) {
        //var obj: number!
        //obj.pos = index
        //indexHolder.insert(number(pos: index), atIndex: 0)
        //indexHolder.append(number(pos:index))
        indexHolder = index
        //number
    }
    
}

