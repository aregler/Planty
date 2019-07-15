//
//  FlowCoordinator.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

final class FlowCoordinator: FlowCoordinatorType {

	func pushPlantDetailView(_ plant: Plant) {
		let controller = PlantDetailDataController(plant: plant)
		let vc = PlantDetailViewController(controller: controller)
		push(viewController: vc, animated: App.current.shouldAnimate())
	}

	func showAddProductViewController() {
		guard let vc = R.storyboard.plantsScene.addProductVC() else {
			return
		}
		App.current.tabCoordinator?.mainNavigationController?.show(vc, sender: nil)
	}

	private func push(viewController: UIViewController, animated: Bool) {
		App.current.tabCoordinator?.mainNavigationController?.pushViewController(viewController, animated: animated)
	}
}
