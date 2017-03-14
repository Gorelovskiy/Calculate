import UIKit

// Add protocol UpdateInformation
class ViewController: UIViewController, ViewUpdateProtocol {
    
    var presenter: CalculatePresenter!

    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initial
        self.presenter =  ViewPresenter(view: self)
        
    }
    //  Function protocol - ViewUpdateProtocol
    func updateLabelResult(result: String) {
        labelResult.text = result
    }

    // Action taped on number buttons
    @IBAction func numeralButton(_ sender: UIButton) {
        if let number = sender.titleLabel?.text {
            presenter.tapNumeralButton(number:  number)
        }
    }
    // Action taped on operation buttons
    @IBAction func operationButtonTapd(_ sender: UIButton) {
        if let number = sender.titleLabel?.text {
            presenter.setOperationId(operation: number)
        }
    }
    
    
    // Action pated on button " AC "
    @IBAction func clearLabel(_ sender: UIButton) {
        
    }
    
    // Action taped on button " = "
    @IBAction func buttonEqually(_ sender: UIButton) {
        presenter.calculateResult()
    }
    // Action taped on button " . "
    @IBAction func buttonComma(_ sender: UIButton) {
        
    }

    
}

