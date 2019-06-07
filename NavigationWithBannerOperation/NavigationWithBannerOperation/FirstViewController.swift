import UIKit

protocol FirstViewControllerDelegate {
  func onToggleBanner()
}

class FirstViewController: UIViewController {
  var delegate: FirstViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()

    var pVC = parent
    while (pVC != nil) {
//      print("parent=\(pVC)")
      if let delegate = pVC as? FirstViewControllerDelegate {
        self.delegate = delegate
        break
      }
      pVC = pVC?.parent
    }

    guard let mainNavController = parent as? MainNavigationController else { abort() }

    print("\(String(describing: type(of: self))) \(#function) parent=\(mainNavController)")
  }

  @IBAction func unwindActionFirstVC(unwindSegue _: UIStoryboardSegue) {}

  override func didMove(toParent parent: UIViewController?) {
    print("\(String(describing: type(of: self))) \(#function) \(String(describing: parent))")
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    print("\(String(describing: type(of: self))) \(#function) \(String(describing: segue.destination))")
  }

  @IBAction func onToggleBanner(_ sender: Any) {
    delegate?.onToggleBanner()
  }
}
