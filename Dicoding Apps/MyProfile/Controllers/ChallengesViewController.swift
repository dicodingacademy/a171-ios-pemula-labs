//
//  ChallengesViewController.swift
//  MyProfile
//
//  Created by Gilang Ramadhan on 30/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ChallengesViewController: UIViewController {
    
    @IBOutlet weak var ar: UIStackView!
    @IBOutlet weak var digital: UIStackView!
    @IBOutlet weak var expert: UIStackView!
    @IBOutlet weak var flutter: UIStackView!
    @IBOutlet weak var web: UIStackView!
    
    var challenges = [ ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar")),
                       ("Digital Guest Book", "Lorem ipsum dolor sit amet", UIImage(named: "digital")),
                       ("Expert Developer on Education Impact Applications", "Lorem ipsum dolor sit amet", UIImage(named: "expert")),
                       ("Create Beautiful Apps Using  Flutter", "Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
                       ("Dicoding Web Master", "Lorem ipsum dolor sit amet", UIImage(named: "web")),
                       ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapped(parameter: &ar)
        addTapped(parameter: &digital)
        addTapped(parameter: &expert)
        addTapped(parameter: &flutter)
        addTapped(parameter: &web)
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        switch gesture.view as? UIStackView {
        case(ar) :
            controller.detail = challenges[0]
        case(digital) :
            controller.detail = challenges[1]
        case(expert) :
            controller.detail = challenges[2]
        case(flutter) :
            controller.detail = challenges[3]
        case(web) :
            controller.detail = challenges[4]
        default:
            controller.detail = challenges[5]
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func addTapped( parameter : inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
        
    }
}
