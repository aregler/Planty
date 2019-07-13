//
//  ShopDataController.swift
//  Planty
//
//  Created by Arsatius Regler on 13.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

enum ShopSection {
	case sensors(String, [Sensor])
	case pot(String, [SmartPot])
}

final class ShopDataController {
	var data: [ShopSection] = [] {
		didSet {
			dataSource.data = data
		}
	}

	let viewModel = ControllerViewModel()
	let dataSource = ShopVCDataSource()

	func update() {
		viewModel.state = .loading

		data = [.sensors("Sensoren", [Mock.Shop.sensor]),
				.pot("Smarte Töpfe", [Mock.Shop.smartPot])
		]

		viewModel.state = .loaded
	}

}
