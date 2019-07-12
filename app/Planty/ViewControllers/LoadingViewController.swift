//
//  LoadingViewController.swift
//  Planty
//
//  Created by Arsatius Regler on 05.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

final class LoadingViewController: UIViewController {
	/*
	Simple ViewController which shows an ActivityIndicator when content is beeing loaded
	Current State: not sure if needed, as we could also show database content
	If needed: Just add this as childVC and when content loading is finished, remove this controller
	and add the new viewController
	*/

	lazy private var activityIndicator = UIActivityIndicatorView(style: .medium)

	override public func viewDidLoad() {
		super.viewDidLoad()
		view.addSubview(activityIndicator)
		activityIndicator.translatesAutoresizingMaskIntoConstraints = false
		activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

		DispatchQueue.main.async { [weak self] in
			self?.activityIndicator.startAnimating()
		}
	}
}
