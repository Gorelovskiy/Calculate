import UIKit

// Add protocol UpdateInformation
class ViewController: UIViewController, WorkWithView {
    
    var presenter: CalculatePresenter!
    


    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let presenter  = ViewPresenter(view: self)
        self.presenter = presenter
        
    }
    //  function work under protocol UpdateInformation
    func updateLabelResult(result: String) {
        labelResult.text = result
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
    //
    @IBAction func button1(_ sender: UIButton) {
        presenter.tapButton(tap: 1)
    }
    @IBAction func button2(_ sender: UIButton) {
        presenter.tapButton(tap: 2)
    }
    @IBAction func button3(_ sender: UIButton) {
        presenter.tapButton(tap: 3)
    }
    @IBAction func button4(_ sender: UIButton) {
        presenter.tapButton(tap: 4)
    }
    @IBAction func button5(_ sender: UIButton) {
        presenter.tapButton(tap: 5)
    }
    @IBAction func button6(_ sender: UIButton) {
        presenter.tapButton(tap: 6)
    }
    @IBAction func button7(_ sender: UIButton) {
        presenter.tapButton(tap: 7)
    }
    @IBAction func button8(_ sender: UIButton) {
        presenter.tapButton(tap: 8)
    }
    @IBAction func button9(_ sender: UIButton) {
        presenter.tapButton(tap: 9)
    }
    @IBAction func button0(_ sender: UIButton) {
        presenter.tapButton(tap: 0)
    }
    //
    @IBAction func buttonComma(_ sender: UIButton) {
    }


}

