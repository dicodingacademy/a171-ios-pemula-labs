//
//  AcademiesViewController.swift
//  DicodingApps
//
//  Created by Gilang Ramadhan on 19/03/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class AcademiesViewController: UIViewController {
    
    @IBOutlet weak var androidAcademy: UIStackView!
    @IBOutlet weak var unityAcademy: UIStackView!
    @IBOutlet weak var arvrAcademy: UIStackView!
    @IBOutlet weak var cloudAcademy: UIStackView!
    
    // Digunakan untuk menampung data item
    var academies = [ ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
                      ("Unity Game Developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
                      ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr")),
                      ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
                      ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Menambahkan aksi tapped pada stack view
        addTapped(parameter: &androidAcademy)
        addTapped(parameter: &unityAcademy)
        addTapped(parameter: &arvrAcademy)
        addTapped(parameter: &cloudAcademy)
    }
    
    func addTapped( parameter : inout UIStackView){
        // Menambahkan gestur tap
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        // Digunakan menginisialisasi DetailViewController
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        
        // Kode di bawah digunakan untuk menentukan stack view mana yang dipilih
        switch gesture.view as? UIStackView {
        case(androidAcademy) :
            controller.detail = academies[0]
        case(unityAcademy) :
            controller.detail = academies[1]
        case(arvrAcademy) :
            controller.detail = academies[2]
        case(cloudAcademy) :
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        
        // Kode dibawah digunakan untuk berpindah ke halaman detail dengan membawa informasi yang sesuai
        self.present(controller, animated: true, completion: nil)
    }
    
}
