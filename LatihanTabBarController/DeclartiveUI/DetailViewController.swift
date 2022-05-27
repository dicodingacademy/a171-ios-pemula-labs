//
//  DetailViewController.swift
//  DeclartiveUI
//
//  Created by Gilang Ramadhan on 17/05/22.
//

import UIKit

class DetailViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .green

    let backButton = UIBarButtonItem(
      title: "Back",
      style: UIBarButtonItem.Style.plain,
      target: self,
      action: #selector(backAction)
    )

    self.navigationItem.leftBarButtonItem = backButton
  }

  @objc func backAction() -> Void {
      dismiss(animated: true, completion: nil)
  }

}
