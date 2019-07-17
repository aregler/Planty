//
//  FirstViewController.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

final class PlantsOverviewVC: UIViewController {
	@IBOutlet weak var tableView: UITableView!

	@IBOutlet weak var addNewPlantButton: UIBarButtonItem!
	// normally injected
	private let controller = UserPlantDataController()

	private var dataSource: UserPlantDataSource {
		return controller.dataSource
	}

	private var viewModel: ControllerViewModel {
		return controller.viewModel
	}

	@IBAction func showAddProductController(_ sender: Any) {
		App.current.flowCoordinator?.showAddProductViewController()
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		bindViewModel()
		tableView.delegate = self
		tableView.dataSource = dataSource
		tableView.register(cellType: UserPlantCell.self)
		// Do any additional setup after loading the view.
		title = "Meine Pflanzen"
		navigationController?.navigationBar.prefersLargeTitles = true
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		controller.update()
	}

	private func bindViewModel() {
		viewModel.onState = { [unowned self] state in
			switch state {
			case .loading: break
			case .loaded:
				self.tableView.reloadData()
			default: break
			}
		}
	}
}

extension PlantsOverviewVC: UITableViewDelegate {

	func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		cell.selectionStyle = .none
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let item = controller.data[indexPath.row]
		App.current.flowCoordinator?.pushPlantDetailView(item)
	}
}

