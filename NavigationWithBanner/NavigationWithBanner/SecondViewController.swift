import UIKit

class SecondViewController: UIViewController {
  deinit {
    print("🟥 deinit \(String(describing: self))")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func unwindActionSecondVC(unwindSegue _: UIStoryboardSegue) {}
}
