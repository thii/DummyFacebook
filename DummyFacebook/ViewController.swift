import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var snarkLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        loadRandomSnark()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "loadRandomSnark", name: UIApplicationWillEnterForegroundNotification, object: nil)

    }

    func loadRandomSnark() {
        let randomIndex = Int(arc4random_uniform(UInt32(snarks.count)))
        self.snarkLabel.text = snarks[randomIndex]
    }

}
