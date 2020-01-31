//
//  ProfileViewController.swift
//  MyProfile
//
//  Created by Gilang Ramadhan on 29/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profilImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profilImage.layer.cornerRadius = profilImage.frame.height / 2
        profilImage.clipsToBounds = true
    }
}
