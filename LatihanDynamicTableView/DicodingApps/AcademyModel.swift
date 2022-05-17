//
//  AcademyModel.swift
//  DicodingApps
//
//  Created by Gilang Ramadhan on 16/05/22.
//

import Foundation
import UIKit

struct AcademyModel {
  let id: Int
  let name: String
  let image: UIImage
  let description: String
}

let dummyAcademyData = [
  AcademyModel(
    id: 145,
    name: "Memulai Pemrograman Dengan Swift",
    image: UIImage(named: "Swift")!,
    description: "Belajar bahasa Swift buat kamu yang ingin mempelajari konsep dasar pemrograman dalam mengembangkan aplikasi iOS, iPadOS, dan macOS."
  ), AcademyModel(
    id: 171,
    name: "Belajar Membuat Aplikasi iOS untuk Pemula",
    image: UIImage(named: "iOSPemula")!,
    description: "Pelajari cara membuat aplikasi pertamamu dengan Xcode. Kelas ini mengajarkan dasar yang dibutuhkan mulai dari Controller sampai TableViews."
  ), AcademyModel(
    id: 202,
    name: "Belajar Fundamental Aplikasi iOS",
    image: UIImage(named: "iOSFundamental")!,
    description: "Pelajari komponen fundamental iOS berdasarkan teknik yang digunakan industri mulai dari App Design, SwiftUI, Networking, sampai Database."
  ), AcademyModel(
    id: 209,
    name: "Menjadi iOS Developer Expert",
    image: UIImage(named: "iOSExpert")!,
    description: "Saatnya jadi iOS Expert dengan belajar Clean Code, Design Pattern, Clean Architecture, Reactive Programming, DI, Modularization, dan TDD."
  ), AcademyModel(
    id: 169,
    name: "Belajar Prinsip Pemrograman SOLID",
    image: UIImage(named: "SOLID")!,
    description: "Pelajari kelima prinsip desain yang merupakan pedoman untuk rancangan kode yang baik pada pemrograman berorientasi objek (OOP)."
  ), AcademyModel(
    id: 292,
    name: "Meniti Karier sebagai Software Developer",
    image: UIImage(named: "MenitiKarier")!,
    description: "Pelajari berbagai jalur yang tersedia sebagai Software Developer dari sudut pandang developer ahli yang sudah meniti karier di bidangnya."
  ), AcademyModel(
    id: 317,
    name: "Belajar Dasar Git dengan GitHub",
    image: UIImage(named: "GitDenganGitHub")!,
    description: "Pelajari cara mengelola data atau kode menggunakan Git dengan GitHub, mulai dari dasar-dasar Git hingga berkolaborasi dengan tim."
  ), AcademyModel(
    id: 237,
    name: "Memulai Dasar Pemrograman untuk Menjadi Pengembang Software",
    image: UIImage(named: "PengembangSoftware")!,
    description: "Pelajari langkah menjadi pengembang software dari tahapan analisis dan perencanaan sampai modifikasi perangkat lunak beserta dokumentasi."
  )
]
