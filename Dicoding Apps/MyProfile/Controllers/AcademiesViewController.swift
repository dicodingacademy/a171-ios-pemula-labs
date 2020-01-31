//
//  AcademiesViewController.swift
//  MyProfile
//
//  Created by Gilang Ramadhan on 30/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class AcademiesViewController: UIViewController {
    @IBOutlet weak var android: UIStackView!
    @IBOutlet weak var unity: UIStackView!
    @IBOutlet weak var arvr: UIStackView!
    @IBOutlet weak var cloud: UIStackView!
    
    var academies = [ ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
                      ("Unity Game Developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
                      ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr")),
                      ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
                      ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapped(parameter: &android)
        addTapped(parameter: &unity)
        addTapped(parameter: &arvr)
        addTapped(parameter: &cloud)
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        switch gesture.view as? UIStackView {
        case(android) :
            controller.detail = academies[0]
        case(unity) :
            controller.detail = academies[1]
        case(arvr) :
            controller.detail = academies[2]
        case(cloud) :
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        self.present(controller, animated: true, completion: nil)
    }
    
    func addTapped( parameter : inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
}
