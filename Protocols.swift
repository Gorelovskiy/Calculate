// Protocol update information in labelResult in ViewController
protocol WorkWithView: class{
    func updateLabelResult(result: String)
}
// Protocol presenter
protocol CalculatePresenter{
    init(view: WorkWithView)
    
    func tapButton(tap: Int)
    func mathOperation(operation: Int)
    func makeSpaceBetweenSimbols()
    

}
