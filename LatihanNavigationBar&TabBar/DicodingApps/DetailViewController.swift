//
//  DetailViewController.swift
//  DicodingApps
//
//  Created by Gilang Ramadhan on 24/05/22.
//

import UIKit

class DetailViewController: UIViewController {

  // MARK: IBOutlet dari berbagai View yang ada dalam DetailViewController.
  @IBOutlet var academyImage: UIImageView!
  @IBOutlet var nameLabel: UILabel!
  @IBOutlet var descLabel: UILabel!

  // MARK: Variabel global untuk menampung data AcademyModel.
  var academy: AcademyModel? = nil

  override func viewDidLoad() {
    super.viewDidLoad()

    // MARK: Ketika data tidak nil, maka akan data AcademyModel akan ditetapkan ke IBOutlet terkait.
    if let result = academy {
      nameLabel.text = result.name
      descLabel.text = result.description
      academyImage.image = result.image
    }
  }
}
