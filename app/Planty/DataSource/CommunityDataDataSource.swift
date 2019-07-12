//
//  CommunityDataDataSource.swift
//  Planty
//
//  Created by Arsatius Regler on 05.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

final class CommunityDataDataSource: NSObject, UITableViewDataSource {
	var data: [CommunityPlant] = []

	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell: CommunityTableViewCell = tableView.dequeueResuableCell(forIndexPath: indexPath)
		cell.configure(with: data[indexPath.row])
		return cell
	}

}
