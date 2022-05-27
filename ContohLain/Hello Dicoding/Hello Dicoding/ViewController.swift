//
//  ViewController.swift
//  Hello Dicoding
//
//  Created by Gilang Ramadhan on 10/02/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var newButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Mengubah teks wellcome
        welcome.text = "Hallo Sobat Dicoding!"

        // Mengambil teks wellcome
        print(welcome.text ?? "Tidak mendapatkan teks")

        // Mengubah teks newButton
        newButton.setTitle("Like sekarang juga!", for: .normal)

        // Mengambil teks newButton
        print(newButton.titleLabel?.text ?? "Tidak mendapatkan teks")
    }

    // Variabel sementara untuk menampung total like
    var totalLike = 0

    // Ketika user menekan tombol Like maka menjalankan function ini
    @IBAction func addLike(_ sender: UIButton) {

        // Setiap kali klik maka akan bertambah 1 like-nya
        totalLike += 1
        newButton.setTitle("Like \(totalLike)", for: .normal)
    }
}
