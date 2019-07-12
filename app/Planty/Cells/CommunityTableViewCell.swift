//
//  CommunityTableViewCell.swift
//  Planty
//
//  Created by Arsatius Regler on 05.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

class CommunityTableViewCell: UITableViewCell, NibIdentifiable {
	@IBOutlet weak var plantImageView: UIImageView!
	@IBOutlet weak var usernameLabel: UILabel!

	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

	func configure(with plant: CommunityPlant) {
		plantImageView.sd_setImage(with: URL(string: plant.urls.small),
								   completed: nil)
		plantImageView.contentMode = .scaleAspectFill
		plantImageView.layer.masksToBounds = true
		plantImageView.layer.cornerRadius = 10
		usernameLabel.text = plant.user.username
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
