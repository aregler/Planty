//
//  TabBarController.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, TabCoordinatorType {

	var mainNavigationController: UINavigationController? {
		return currentViewController as? UINavigationController
	}

	var tabController: UITabBarController? {
		return self
	}

	var currentViewController: UIViewController? {
		return viewControllers?.first
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		App.push(tabCoordinator: self)
    }
}
