//
//  DetailViewController.swift
//  MyHeroApp
//
//  Created by Gilang Ramadhan on 30/03/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var photoHero: UIImageView!
    @IBOutlet weak var descHero: UILabel!
    
    // Digunakan untuk menampung data Hero
    var hero: Hero?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Digunakan untuk menetapkan nilai hero ke beberapa view yang ada
        if let result = hero {
            photoHero.image = result.photo
            nameHero.text = result.name
            descHero.text = result.description
        }
    }
}
