import UIKit

class FirstViewController: UIViewController {
  deinit {
    print("🟥 deinit \(String(describing: self))")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func unwindActionFirstVC(unwindSegue _: UIStoryboardSegue) {}
}
