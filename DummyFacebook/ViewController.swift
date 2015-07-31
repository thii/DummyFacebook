import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var snarkLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        loadRandomSnark(self)

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "loadRandomSnark:", name: UIApplicationWillEnterForegroundNotification, object: nil)

    }

    @IBAction func loadRandomSnark(sender: AnyObject) {
        let randomIndex = Int(arc4random_uniform(UInt32(snarks.count)))
        self.snarkLabel.text = snarks[randomIndex]
    }

}
