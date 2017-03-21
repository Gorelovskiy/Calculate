import UIKit

// Add protocol UpdateInformation
class ViewController: UIViewController, ViewUpdateProtocol {
    
    var presenter: CalculatePresenter!

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelHistory: UILabel!
    
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonSub: UIButton!
    @IBOutlet weak var buttonMul: UIButton!
    @IBOutlet weak var buttonDiv: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initial
        self.presenter =  ViewPresenter(view: self)
    }
    
    //  Function protocol - ViewUpdateProtocol
    func updateLabelResult(result: String) {
        labelResult.text = result
    }
    func updateLabelHistory(result: String) {
        labelHistory.text = result
    }
    
    func dropedBorderWidthButtons() {
        buttonAdd.layer.borderWidth = CGFloat(Constants.BorderLayers.nill.rawValue)
        buttonSub.layer.borderWidth = CGFloat(Constants.BorderLayers.nill.rawValue)
        buttonMul.layer.borderWidth = CGFloat(Constants.BorderLayers.nill.rawValue)
        buttonDiv.layer.borderWidth = CGFloat(Constants.BorderLayers.nill.rawValue)
    }

    // Action taped on number buttons
    @IBAction func numeralButton(_ sender: UIButton) {
        if let number = sender.titleLabel?.text {
            presenter.tapNumeralButton(number:  number)
        }
    }
    
    // Action taped on operation buttons
    @IBAction func operationButtonTapd(_ sender: UIButton) {
        dropedBorderWidthButtons()
        if let number = sender.titleLabel?.text {
            presenter.setOperationId(operation: number)
            sender.layer.borderWidth = CGFloat(Constants.BorderLayers.pressed.rawValue)
        }
    }
    
    
    // Action pated on button " AC "
    @IBAction func clearButtonTapd(_ sender: UIButton) {
        dropedBorderWidthButtons()
        presenter.clearOperation()
    }
    
    // Action taped on button " = "
    @IBAction func equallyButtonTapd(_ sender: UIButton) {
        dropedBorderWidthButtons()
        presenter.calculateResult()
    }
   

    
}

