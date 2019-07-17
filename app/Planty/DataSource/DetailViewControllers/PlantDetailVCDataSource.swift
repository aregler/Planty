//
//  PlantDetailVCDataSource.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

import UIKit

final class PlantDetailVCDataSource: NSObject, UITableViewDataSource {
	var data: [PlantDetailItem] = []

	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let item = data[indexPath.row]
		switch item {
		case let .plant(plant):
			let cell: PlantDetailTableViewCell = tableView.dequeueReusableCell()
			cell.configure(with: plant)
			return cell
		case let .chart(plant):
			let cell: RainTVCell = tableView.dequeueReusableCell()
			cell.configure(with: plant)
			return cell
		}
	}
}
