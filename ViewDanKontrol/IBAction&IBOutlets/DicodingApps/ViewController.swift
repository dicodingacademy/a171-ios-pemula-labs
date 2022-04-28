//
//  ViewController.swift
//  MyProfile
//
//  Created by Gilang Ramadhan on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

  private var isFollow = false

  @IBOutlet weak var myPicture: UIImageView!
  @IBOutlet weak var buttonFollow: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupCircleImageView()
    setupButtonFollow(isFollow)
  }

  @IBAction func setFollowed(_ sender: Any) {
    isFollow = !isFollow
    setupButtonFollow(isFollow)
  }

  private func setupButtonFollow(_ state: Bool) {
    let dicodingColor = UIColor(named: "DicodingColor")
    let whiteColor = UIColor.white
    buttonFollow.backgroundColor = .clear
    buttonFollow.layer.cornerRadius = 5
    buttonFollow.layer.borderWidth = 1

    buttonFollow.setTitle(state ? "Following" : "Follow", for: .normal)
    buttonFollow.backgroundColor = state ? whiteColor : dicodingColor
    buttonFollow.setTitleColor(state ? dicodingColor : whiteColor, for: .normal)
    buttonFollow.layer.borderColor = state ? dicodingColor?.cgColor : whiteColor.cgColor
  }

  private func setupCircleImageView() {
    myPicture.layer.borderWidth = 1
    myPicture.layer.masksToBounds = false
    myPicture.layer.borderColor = UIColor.black.cgColor
    myPicture.layer.cornerRadius = myPicture.frame.height/2
    myPicture.clipsToBounds = true
  }
}
