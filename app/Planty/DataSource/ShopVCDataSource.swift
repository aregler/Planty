//
//  ShopVCDataSource.swift
//  Planty
//
//  Created by Arsatius Regler on 13.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

final class ShopVCDataSource: NSObject, UITableViewDataSource {

	var data: [ShopSection] = []

	func numberOfSections(in tableView: UITableView) -> Int {
		return data.count
	}

	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		switch data[section] {
		case let .pot(title, _), let .sensors(title, _):
			return title
		}
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		switch data[section] {
		case let .pot(_, pots):
			return pots.count
		case let .sensors(_, sensor):
			return sensor.count
		}
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell: ShopTableViewCell = tableView.dequeueResuableCell(forIndexPath: indexPath)

		let item: ShopItemType
		switch data[indexPath.section] {
		case let .pot(_, items):
			item = items[indexPath.row]
		case let .sensors(_, sensors):
			item = sensors[indexPath.row]
		}
		cell.configure(with: item)
		return cell
	}
}
