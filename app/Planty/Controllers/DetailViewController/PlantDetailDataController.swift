//
//  PlantDetailDataController.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

enum PlantDetailItem {
	case plant(Plant)
	case chart(Plant)
}

final class PlantDetailDataController {

	var data: [PlantDetailItem] = [] {
		didSet {
			dataSource.data = data
		}
	}

	let dataSource = PlantDetailVCDataSource()
	let viewModel = ControllerViewModel()

	let plant: Plant

	init(plant: Plant) {
		self.plant = plant
		update()
	}

	func update() {
		viewModel.state = .loading
		data = [PlantDetailItem.plant(plant), .chart(plant)]
		viewModel.state = .loaded
	}
}
