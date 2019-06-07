import UIKit

class ContainerViewController: UIViewController {
  @IBOutlet weak var constraintBannerHight: NSLayoutConstraint!

  override func viewDidLoad() {
    super.viewDidLoad()
    print("\(String(describing: type(of: self))) \(#function) ")
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    print("\(String(describing: type(of: self))) prepare for segue \(String(describing: segue.destination))")
    if segue.identifier == "embedNavController" {
      if let mainNavController = segue.destination as? MainNavigationController {
//        mainNavController.containerVC = self
      }
    }
  }

  @IBAction func onTapShowHide(_ sender: Any) {
    toggleBanner()
  }

  func toggleBanner() {
    if (constraintBannerHight.constant > 0.0) {
      constraintBannerHight.constant = 0.0
    }
    else {
      constraintBannerHight.constant = 100.0
    }

    UIView.animate(withDuration: 0.5) {
      self.view.layoutIfNeeded()
    }
  }
}

extension ContainerViewController: FirstViewControllerDelegate {
  func onToggleBanner() {
    print("\(String(describing: type(of: self))) \(#function)")
    toggleBanner()
  }
}
