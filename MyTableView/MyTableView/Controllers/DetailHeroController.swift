//
//  DetailHeroController.swift
//  MyTableView
//
//  Created by Gilang Ramadhan on 28/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class DetailHeroController: UIViewController {
    
    @IBOutlet weak var photoHero: UIImageView!
    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var descHero: UILabel!
    
    var photo : UIImage?
    var name : String?
    var desc : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoHero.image = photo
        nameHero.text = name
        descHero.text = desc
    }
}
