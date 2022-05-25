//
//  AcademyTableViewCell.swift
//  DicodingApps
//
//  Created by Gilang Ramadhan on 16/05/22.
//

import UIKit

class AcademyTableViewCell: UITableViewCell {

  // MARK: IBOutlet dari berbagai View yang ada dalam AcademyTableViewCell.
  @IBOutlet var academyLabel: UILabel!
  @IBOutlet var academyImageView: UIImageView!

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(
    _ selected: Bool,
    animated: Bool
  ) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }
}
