//
//  UserPlantCell.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import SDWebImage
import UIKit

class UserPlantCell: UITableViewCell, NibIdentifiable {

	@IBOutlet weak var plantImageView: UIImageView!
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var detailLabel: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()
		titleLabel.textColor = .label
		detailLabel.textColor = .secondaryLabel
    }

	func configure(with plant: Plant) {
		plantImageView.sd_setImage(with: plant.image, completed: nil)
		titleLabel.text = plant.name
		detailLabel.text = "Giessen: in 2 Tagen"

		plantImageView.contentMode = .scaleAspectFill
		plantImageView.layer.masksToBounds = true
		plantImageView.layer.cornerRadius = 10
	}
}
