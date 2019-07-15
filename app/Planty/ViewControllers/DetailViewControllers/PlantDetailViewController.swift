//
//  PlantDetailViewController.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

final class PlantDetailViewController: UIViewController {

	private let tableView = UITableView(frame: .zero, style: .grouped)

	let controller: PlantDetailDataController

	var viewModel: ControllerViewModel {
		return controller.viewModel
	}

	var dataSource: PlantDetailVCDataSource {
		return controller.dataSource
	}

	init(controller: PlantDetailDataController) {
		self.controller = controller
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func viewDidLoad() {
        super.viewDidLoad()
		view.addSubview(tableView)
		tableView.pinToSuperView()
		tableView.register(cellType: PlantDetailTableViewCell.self)
		tableView.register(cellType: RainTVCell.self)
		bindViewModel()
		tableView.dataSource = dataSource
		tableView.delegate = self
        // Do any additional setup after loading the view.
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

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		controller.update()
	}
}

extension PlantDetailViewController: UITableViewDelegate {}
