//
//  ViewController.swift
//  MyStoryboard
//
//  Created by Gilang Ramadhan on 19/05/22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
    print("Go To Home")
  }
  
  @IBAction func moveToAntoherPage(_ sender: Any) {
    performSegue(withIdentifier: "moveToAnotherPage", sender: sender)
  }
}

