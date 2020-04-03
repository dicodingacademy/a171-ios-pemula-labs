//
//  ChallengesViewController.swift
//  DicodingApps
//
//  Created by Gilang Ramadhan on 19/03/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ChallengesViewController: UIViewController {
    
    @IBOutlet weak var arChallenge: UIStackView!
    @IBOutlet weak var guestBookChallenge: UIStackView!
    @IBOutlet weak var educationChallenge: UIStackView!
    @IBOutlet weak var flutterChallenge: UIStackView!
    @IBOutlet weak var webChallenge: UIStackView!
    
    // Digunakan untuk menampung data item
    var challenges = [ ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar")),
                       ("Digital Guest Book", "Lorem ipsum dolor sit amet", UIImage(named: "digital")),
                       ("Expert Developer on Education Impact Applications", "Lorem ipsum dolor sit amet", UIImage(named: "expert")),
                       ("Create Beautiful Apps Using  Flutter", "Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
                       ("Dicoding Web Master", "Lorem ipsum dolor sit amet", UIImage(named: "web")),
                       ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "ar"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Menambahkan aksi tapped pada stack view
        addTapped(parameter: &arChallenge)
        addTapped(parameter: &guestBookChallenge)
        addTapped(parameter: &educationChallenge)
        addTapped(parameter: &flutterChallenge)
        addTapped(parameter: &webChallenge)
    }
    
    func addTapped( parameter : inout UIStackView){
        // Menambahkan gestur tap
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        // Digunakan untuk aksi setelah gestur tap dilakukan
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        
        // Kode di bawah digunakan untuk menentukan stack view mana yang dipilih
        switch gesture.view as? UIStackView {
        case(arChallenge) :
            controller.detail = challenges[0]
        case(guestBookChallenge) :
            controller.detail = challenges[1]
        case(educationChallenge) :
            controller.detail = challenges[2]
        case(flutterChallenge) :
            controller.detail = challenges[3]
        case(webChallenge) :
            controller.detail = challenges[4]
        default:
            controller.detail = challenges[5]
        }
        
        // Kode dibawah digunakan untuk berpindah ke halaman detail dengan membawa informasi yang sesuai
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
