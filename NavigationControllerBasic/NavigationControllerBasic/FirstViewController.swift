import UIKit

class FirstViewController: UIViewController {


  deinit {
    print("deinit \(String(describing: type(of: self)))")
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad \(String(describing: type(of: self)))")
  }

  @IBAction func unwindActionFirstVC(unwindSegue _: UIStoryboardSegue) {}
}
