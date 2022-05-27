//
//  ViewController.swift
//  MyDicodng
//
//  Created by Gilang Ramadhan on 01/05/22.
//

import UIKit

class ProfileViewController: UIViewController {

  @IBOutlet weak var profileImageView: UIImageView!
  @IBOutlet weak var followButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupCircleImageView()
  }

  private var isFollow = false

  @IBAction func setFollowed(_ sender: Any) {
    isFollow = !isFollow
    followButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
  }

  private func setupCircleImageView() {
    profileImageView.layer.borderWidth = 1
    profileImageView.layer.masksToBounds = false
    profileImageView.layer.borderColor = UIColor.black.cgColor
    profileImageView.layer.cornerRadius = profileImageView.frame.height/2
    profileImageView.clipsToBounds = true
  }

}
