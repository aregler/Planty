//
//  FlowCoordinatorType.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

/// The source of a flow
enum FlowSource: Int, Equatable {
	/// Flow was triggered in app by tapping on teasers or links
	case inApp

	/// Flow comes from an external universal link triggered by safari
	case universalLink

	/// Flow comes from a push notification
	case pushNotification
}

protocol FlowCoordinatorType: class {
	func pushPlantDetailView(_ plant: Plant)
	func showAddProductViewController()
}
