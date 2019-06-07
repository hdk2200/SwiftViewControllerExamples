import UIKit

class MainNavigationController: UINavigationController {
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didMove(toParent parent: UIViewController?) {
    print("\(String(describing: type(of: self))) \(#function) \(String(describing: parent))")
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    print("\(String(describing: type(of: self))) \(#function) \(String(describing: parent))")
  }
}
