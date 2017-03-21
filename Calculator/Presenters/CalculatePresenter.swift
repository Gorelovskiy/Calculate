// Protocol presenter
protocol CalculatePresenter{
    init(view: ViewUpdateProtocol)
    
    func tapNumeralButton(number: String)
    func setOperationId(operation id: String)
    func calculateResult()
    func clearOperation()
    
    
}
