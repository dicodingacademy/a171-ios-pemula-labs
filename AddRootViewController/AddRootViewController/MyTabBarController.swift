//
//  MyTabBarController.swift
//  AddRootViewController
//
//  Created by Gilang Ramadhan on 23/03/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // konstruktor untuk kelas view controller
        let firstViewController = ViewController()
        let secondViewController = AnotherViewController()
        
        // menambahkan tabBarItem ke dalam
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        // menambahkan tabBarItem dengan gambar lain
        secondViewController.tabBarItem = UITabBarItem(title: "Menu Lain", image: .actions, tag: 1)

        // menambahkan view controller ke dalam class tab bar controller
        viewControllers =  [firstViewController, secondViewController]
    }

}
