# SwiftViewControllerExamples

This repository is UIViewController and a sample using UINavigationController created in Swift. This is an example of screen transition in UINavigationController and segue, and an example of embedding UIViewController as a part in ContainerView.

## NavigationControllerBasic

This is simple example using UINavigationController.
It' use segue to showing another ViewController.

- Storyboard, UINavigationController and ViewController structure.  

![Basic usage of UINavigationController](assets/seque_sb.png "Basic usage of UINavigationController.")

- Segue transition  

![ViewController Segue transition](assets/segue.gif "Basic usage of UINavigationController.Segue transiton")

### How to implement the back button

1. Implement unwindSegue in the previous ViewController class.

1. CTRL + Drag from ViewContorlller part on Storyboard and tie it to exit.

```swift
import UIKit

class FirstViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func unwindActionFirstVC(unwindSegue _: UIStoryboardSegue) {}
}
```
