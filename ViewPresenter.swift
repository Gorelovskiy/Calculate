class ViewPresenter: CalculatePresenter{
    unowned let view: WorkWithView
    var currentValue:Double
    var addValue:Double
    //
    var recievedNumber:String

    required init(view: WorkWithView){
        self.view = view
        self.currentValue = 0
        self.addValue = 0
        self.recievedNumber = ""
    }
    //
    func tapButton(tap: Int)
    {
        // Inspection count simbols in recievedNubmer
        guard recievedNumber.characters.count < 11 else {return}
        // Inspection count simbols for add space between simbols
        makeSpaceBetweenSimbols()
        switch tap {
        case 0 : if(recievedNumber != "0"){ recievedNumber += "0" }
        case 1: recievedNumber += "1"
        case 2: recievedNumber += "2"
        case 3: recievedNumber += "3"
        case 4: recievedNumber += "4"
        case 5: recievedNumber += "5"
        case 6: recievedNumber += "6"
        case 7: recievedNumber += "7"
        case 8: recievedNumber += "8"
        case 9: recievedNumber += "9"
        default: break
        }
        view.updateLabelResult(result: recievedNumber)
    }
    //
    func mathOperation(operation: Int)
    {
        // Inspection if currentValue = 0 then add value in currentvalue and clear field(label)
        guard currentValue != 0 else {
            currentValue = Double(recievedNumber)!
            recievedNumber = ""
            view.updateLabelResult(result: recievedNumber)
            return
        }

        switch operation {
        case 1: recievedNumber = String(currentValue + Double(recievedNumber)!)
        case 2: recievedNumber = String(currentValue - Double(recievedNumber)!)
        case 3: recievedNumber = String(currentValue * Double(recievedNumber)!)
        case 4: recievedNumber = String(currentValue / Double(recievedNumber)!)
        case 5: recievedNumber =  "\(currentValue + addValue)"
               default: break
        }
        
        
       view.updateLabelResult(result: recievedNumber)
    }
    
    
    
    //Func add spece between simbols
    func makeSpaceBetweenSimbols() {
        
        if    recievedNumber.characters.count == 3
           || recievedNumber.characters.count == 7
        {
            recievedNumber += " "
        }
        
    }
}
