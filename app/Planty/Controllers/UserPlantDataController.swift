//
//  UserPlantDataController.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

final class UserPlantDataController {

	var data: [Plant] = [] {
		didSet {
			dataSource.data = data
		}
	}

	// normally passed via injection
	let viewModel = ControllerViewModel()
	let dataSource = UserPlantDataSource()

	func update() {
		viewModel.state = .loading
		data = App.current.database.getPlants()
		viewModel.state = .loaded
	}

}
