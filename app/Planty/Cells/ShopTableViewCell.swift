//
//  ShopTableViewCell.swift
//  Planty
//
//  Created by Arsatius Regler on 13.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

class ShopTableViewCell: UITableViewCell, NibIdentifiable{

	@IBOutlet weak var productImageView: UIImageView!
	@IBOutlet weak var typeLabel: UILabel!

	override class func awakeFromNib() {
		super.awakeFromNib()
	}

	func configure(with item: ShopItemType) {
		productImageView.image = item.selfImage
		typeLabel.text = item.type
		backgroundColor = .systemGray4
		productImageView.contentMode = .scaleAspectFill
	}
    
}
