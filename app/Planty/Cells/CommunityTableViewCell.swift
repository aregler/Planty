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

	var onImageLoaded: (() -> Void)?

	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

	override func prepareForReuse() {
		super.prepareForReuse()
		plantImageView.image = nil
	}

	func configure(with plant: CommunityPlant) {
		plantImageView.sd_setImage(with: URL(string: plant.urls.small)) { [weak self] (_, _, _, _) in
			self?.onImageLoaded?()
		}
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
