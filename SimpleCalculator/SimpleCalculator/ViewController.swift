//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Gilang Ramadhan on 27/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var panjang: UITextField!
    @IBOutlet weak var lebar: UITextField!
    @IBOutlet weak var hasil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hitung(_ sender: Any) {
        if let p = Double(panjang.text ?? "0"), let l = Double(lebar.text ?? "0"){
            hasil.text = String(p * l)
        }else{
            hasil.text = "Hasil Tidak Valid"
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        hasil.text = ""
        lebar.text = ""
        panjang.text = ""
    }
}
