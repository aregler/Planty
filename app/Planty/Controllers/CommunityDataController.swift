//
//  CommunityDataController.swift
//  Planty
//
//  Created by Arsatius Regler on 05.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

final class CommunityDataController {
	var data: [CommunityPlant] = [] {
		didSet {
			dataSource.data = data
		}
	}

	private lazy var networkService: NetworkService = {
		NetworkService(urlSessionConfiguration: .default)
	}()

	// normally passed via injection
	let viewModel = ControllerViewModel()
	let dataSource = CommunityDataDataSource()

	func update() {
		viewModel.state = .loading
		let resource = Resource<[CommunityPlant]>(url: UnsplashAPI.url)
		networkService.get(resource: resource) { [unowned self] result in
			switch result {
			case let .success(entries):
				self.data = entries
				self.viewModel.state = .loaded
			case let .failure(error):
				self.viewModel.state = .errorLoading(error)
			}
		}
	}
}
