import UIKit

class ThirdViewController: UIViewController {
  deinit {
    print("🟥 deinit \(String(describing: self))")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func unwindActionThirdVC(unwindSegue _: UIStoryboardSegue) {}
}
