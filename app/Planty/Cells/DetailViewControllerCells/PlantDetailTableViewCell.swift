//
//  PlantDetailTableViewCell.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

class PlantDetailTableViewCell: UITableViewCell, NibIdentifiable {
	@IBOutlet weak var plantImageView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var typeLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

	func configure(with plant: Plant) {
		plantImageView.sd_setImage(with: plant.image, completed: nil)
		nameLabel.text = plant.name
		typeLabel.text = plant.kind.rawValue
		descriptionLabel.text = plant.description.short
	}

	
    
}
