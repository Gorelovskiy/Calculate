import UIKit

// Add protocol UpdateInformation
class ViewController: UIViewController, WorkWithView {
    
    var presenter: CalculatePresenter!

    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initial
        self.presenter =  ViewPresenter(view: self)
        
    }
    //  function work under protocol UpdateInformation
    func updateLabelResult(result: String) {
        labelResult.text = result
    }

    // Test action
    @IBAction func numeralButton(_ sender: UIButton) {
        if let number = sender.titleLabel?.text {
            presenter.tapNumeralButton(number:  number)
        }
    }

    
    
    // Actions
    @IBAction func clearLabel(_ sender: UIButton) {
    }
    //
    @IBAction func buttonDiv(_ sender: UIButton) {
         presenter.mathOperation(operation: 4)
    }
    @IBAction func buttonMuln(_ sender: UIButton) {
         presenter.mathOperation(operation: 3)
    }
    @IBAction func buttonSub(_ sender: UIButton) {
         presenter.mathOperation(operation: 2)
    }
    @IBAction func buttonAdd(_ sender: UIButton) {
        presenter.mathOperation(operation: 1)
    }
    @IBAction func buttonEqually(_ sender: UIButton) {
    }
    
    @IBAction func buttonComma(_ sender: UIButton) {
    }


}

