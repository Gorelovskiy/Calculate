// Protocol update information in labelResult in ViewController
protocol WorkWithView: class{
    func updateLabelResult(result: String)
}
// Protocol presenter
protocol CalculatePresenter{
    init(view: WorkWithView)
    
    func tapNumeralButton(number: String)
    func mathOperation(operation: Int)
}


//
protocol MathOperation {
    var idOperator: String { get } // get - переменную можно только получить  set - изменить 
    func calculate(operandA: Double, operandB: Double) -> Double
    
}
