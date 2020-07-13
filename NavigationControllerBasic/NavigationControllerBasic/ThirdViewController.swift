import UIKit

class ThirdViewController: UIViewController {

  deinit {
     print("deinit \(String(describing: type(of: self)))")
   }

  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad \(String(describing: type(of: self)))")
  }

  @IBAction func unwindActionThirdVC(unwindSegue _: UIStoryboardSegue) {}
}
