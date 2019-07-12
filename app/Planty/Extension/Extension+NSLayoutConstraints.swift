//
//  Extension+NSLayoutConstraints.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

extension UIView {
	func pin(to view: UIView) {
		trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
	}
}
