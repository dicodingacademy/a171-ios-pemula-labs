//
//  ViewController.swift
//  MyDicoding
//
//  Created by Gilang Ramadhan on 14/06/22.
//

import UIKit

class ProfileViewController: UIViewController {

  @IBOutlet var profileImageView: UIImageView!
  @IBOutlet var followedButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupCircleImageView()
  }

  private var isFollow = false
  @IBAction func setFollowed(_ sender: UIButton) {
    isFollow = !isFollow
    followedButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
  }

  private func setupCircleImageView() {
    profileImageView.layer.borderWidth = 1
    profileImageView.layer.masksToBounds = false
    profileImageView.layer.borderColor = UIColor.black.cgColor
    profileImageView.layer.cornerRadius = profileImageView.frame.height/2
    profileImageView.clipsToBounds = true
  }
}
