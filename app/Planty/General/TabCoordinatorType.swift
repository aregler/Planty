//
//  TabCoordinatorType.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

public protocol TabCoordinatorType: UITabBarControllerDelegate {

	/// The navigation controller of the currently selected tab
	var mainNavigationController: UINavigationController? { get }

	/// The tab bar controller this coordinator manages
	var tabController: UITabBarController? { get }

	/// The currently visible view controller.
	var currentViewController: UIViewController? { get }
}
