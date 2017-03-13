class ViewPresenter: CalculatePresenter{
    let view: WorkWithView!
    
    var currentValue:Double = 0
    var addValue:Double = 0
    //
    var recievedNumber:String = ""

    required init(view: WorkWithView){
        self.view = view
    }
    //
    func tapNumeralButton(number : String)
    {
        // Inspection count simbols in recievedNubmer
        guard recievedNumber.characters.count < 11 else {return}
        // Inspection count simbols for add space between simbols
        makeSpaceBetweenSimbols()
        
        
        recievedNumber += number
        
        //if(recievedNumber != number){ recievedNumber += number }
        
        
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
