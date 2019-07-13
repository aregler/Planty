//
//  SecondViewController.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!

	private let controller = ShopDataController()

	private var dataSource: ShopVCDataSource {
		return controller.dataSource
	}

	private var viewModel: ControllerViewModel {
		return controller.viewModel
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.register(cellType: ShopTableViewCell.self)
		tableView.delegate = self
		tableView.dataSource = dataSource
		controller.update()
		title = "Shop"
		navigationController?.navigationBar.prefersLargeTitles = true
	}

	private func bindViewModel() {
		viewModel.onState = { [unowned self] state in
			switch state {
			case .loading:
				self.clearChildren()
				self.addOnceAutoresizing(LoadingViewController())
			case .loaded:
				self.clearChildren()
				self.tableView.reloadData()
			default: break
			}
		}
	}
}

extension ShopViewController: UITableViewDelegate {

	func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		addCornerRadius(to: cell, size: CGSize(width: 10, height: 10))
	}
}
