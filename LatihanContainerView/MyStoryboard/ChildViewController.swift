//
//  ChildViewController.swift
//  MyStoryboard
//
//  Created by Gilang Ramadhan on 23/05/22.
//

import UIKit

class ChildViewController: UIViewController {

  @IBOutlet var nameTextField: UITextField!
  @IBOutlet var outputLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func submitButton(_ sender: Any) {
    if let name = nameTextField.text {
      outputLabel.text = "Selamat datang \(name)!"
    } else {
      outputLabel.text = "Masukkanlah namamu!"
    }
  }

}
