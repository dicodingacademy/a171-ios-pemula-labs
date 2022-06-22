//
//  ViewController.swift
//  DicodingApps
//
//  Created by Gilang Ramadhan on 16/05/22.
//

import UIKit

class ViewController: UIViewController {

  // MARK: IBOutlet dari TableView.
  @IBOutlet var academyTableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()

    // MARK: Untuk menyediakan data ke TableView.
    academyTableView.dataSource = self
    academyTableView.delegate = self

    // MARK: Mendaftarkan XIB ke ViewController.
    academyTableView.register(
      UINib(nibName: "AcademyTableViewCell", bundle: nil),
      forCellReuseIdentifier: "AcademyCell"
    )
  }
}

// MARK: Mengimplementasikan UITableViewDataSource ke dalam ViewController.
extension ViewController: UITableViewDataSource {

  // MARK: Mengetahui berapa banyak item yang akan muncul.
  func tableView(
    _ tableView: UITableView,
    numberOfRowsInSection section: Int
  ) -> Int {

    // MARK: Mendapatkan jumlah item dari dummyAcademyData.
    return dummyAcademyData.count
  }

  // MARK: Mengatur bagaimana tampilan dari setiap TableViewCell.
  func tableView(
    _ tableView: UITableView,
    cellForRowAt indexPath: IndexPath
  ) -> UITableViewCell {

    // MARK: Mencari AcademyTableViewCell berdasarkan Identifier.
    if let cell = tableView.dequeueReusableCell(
      withIdentifier: "AcademyCell",
      for: indexPath
    ) as? AcademyTableViewCell {

      // MARK: Menetapkan nilai gambar dan nama untuk setiap cell/item.
      let academy = dummyAcademyData[indexPath.row]
      cell.academyLabel.text = academy.name
      cell.academyImageView.image = academy.image

      // MARK: Mengembalikan cell agar bisa ditampilkan dalam TableView.
      return cell
    } else {

      // MARK: Mengembalikan UITableViewCell ketika cell bernilai nil/null.
      return UITableViewCell()
    }
  }

}

// MARK: Mengimplementasikan UITableViewDelegate ke dalam ViewController.
extension ViewController: UITableViewDelegate {

  // MARK: Merespon ketika Table View Cell ditekan.
  func tableView(
    _ tableView: UITableView,
    didSelectRowAt indexPath: IndexPath
  ) {

    // MARK: Menambahkan trigger untuk segue ketika Table View Cell ditekan.
    performSegue(
      withIdentifier: "moveToDetail",
      sender: dummyAcademyData[indexPath.row]
    )
  }

  // MARK: Mengonfirmasi Segue dan mengelola data yang dikirim.
  override func prepare(
    for segue: UIStoryboardSegue,
    sender: Any?
  ) {

    // MARK: Mecocokkan ID dan tujuan ViewController dari segue
    if segue.identifier == "moveToDetail" {
      if let detaiViewController = segue.destination as? DetailViewController {

        // MARK: Jika sesuai, data akan dikirim ke DetailViewController.
        detaiViewController.academy = sender as? AcademyModel
      }
    }
  }
}
