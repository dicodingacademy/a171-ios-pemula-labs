//
//  ViewController.swift
//  MyTableView
//
//  Created by Gilang Ramadhan on 27/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class HeroViewController: UIViewController {
    
    @IBOutlet weak var heroTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Daftar Pahlawan Indonesia"
        
        heroTableView.dataSource = self
        heroTableView.delegate = self
        heroTableView.register(UINib(nibName: "HeroViewCell", bundle: nil), forCellReuseIdentifier: "HeroCell")
    }
}

extension HeroViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell", for: indexPath) as! HeroViewCell
        
        let hero = heroes[indexPath.row]
        cell.nameHero.text = hero.name
        cell.descHero.text = hero.description
        cell.photoHero.image = hero.photo
        
        cell.photoHero.layer.cornerRadius = cell.photoHero.frame.height / 2
        cell.photoHero.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = self.storyboard?.instantiateViewController(withIdentifier: "DetailHero") as! DetailHeroController
        let hero = heroes[indexPath.row]
        detail.name = hero.name
        detail.desc = hero.description
        detail.photo = hero.photo
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

