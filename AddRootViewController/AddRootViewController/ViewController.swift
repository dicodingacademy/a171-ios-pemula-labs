//
//  ViewController.swift
//  AddRootViewController
//
//  Created by Gilang Ramadhan on 20/03/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        let button = UIButton(frame: CGRect(x: 184, y: 433, width: 70, height: 30))
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let vc = UINavigationController(rootViewController: DetailViewController())
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

