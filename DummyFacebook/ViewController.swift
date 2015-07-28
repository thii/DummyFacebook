import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var snarkLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let randomIndex = Int(arc4random_uniform(UInt32(snarks.count)))
        self.snarkLabel.text = snarks[randomIndex]
    }

}
