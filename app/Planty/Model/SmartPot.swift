//
//  SmartPot.swift
//  Planty
//
//  Created by Arsatius Regler on 13.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

struct SmartPot: ShopItemType {
	let type: String
	let measures: [Measurements]
	let price: Euro
	let selfImage = Images.pot_self()

	let allImages: [UIImage?] = [
		Images.pot_self(),
		Images.pot_measurements(),
		Images.pot_1(),
		Images.pot_2(),
		Images.pot_3()
	]
}

