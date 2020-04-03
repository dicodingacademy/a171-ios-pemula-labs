//
//  DetailViewController.swift
//  DicodingApps
//
//  Created by Gilang Ramadhan on 19/03/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // IBOutlets menghubungkan view dengan controller
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var descDetail: UILabel!
    
    // Digunakan untuk menampung data sementara
    var detail : (title: String?, desc: String?, image: UIImage?)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Digunakan untuk mengubah konten setiap kali membuka halaman detail
        titleDetail.text = detail.title
        descDetail.text = detail.desc
        imageDetail.image = detail.image
    }
}
