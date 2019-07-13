//
//  CommunityViewController.swift
//  Planty
//
//  Created by Arsatius Regler on 05.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

class CommunityViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!

	// normally injected
	private let controller = CommunityDataController()

	private var dataSource: CommunityDataDataSource {
		return controller.dataSource
	}

	private var viewModel: ControllerViewModel {
		return controller.viewModel
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = dataSource
		tableView.register(cellType: CommunityTableViewCell.self)
		// Do any additional setup after loading the view.
		title = "Community"
		navigationController?.navigationBar.prefersLargeTitles = true
		bindViewModel()
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		controller.update()
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

extension CommunityViewController: UITableViewDelegate {
//	func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//		addCornerRadius(to: cell, size: CGSize(width: 10, height: 10))
//	}
}
