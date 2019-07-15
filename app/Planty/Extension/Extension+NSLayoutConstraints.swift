//
//  Extension+NSLayoutConstraints.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

extension UIView {
	func pinAbsoluteToSuperView() {
		guard let superView = self.superview else {
			return
		}
		translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			leadingAnchor.constraint(equalTo: superView.leadingAnchor),
			trailingAnchor.constraint(equalTo: superView.trailingAnchor),
			topAnchor.constraint(equalTo: superView.topAnchor),
			bottomAnchor.constraint(equalTo: superView.bottomAnchor)
		])
	}

	func pinToSuperView(useSafeAreaLayoutGuide: Bool = false) {
		guard let superView = superview else {
			return
		}
		translatesAutoresizingMaskIntoConstraints = false

		if #available(iOS 11.0, *), useSafeAreaLayoutGuide {
			NSLayoutConstraint.activate([
				leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor),
				trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor),
				topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor),
				bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor)
			])
		} else {
			NSLayoutConstraint.activate([
				leadingAnchor.constraint(equalTo: superView.leadingAnchor),
				trailingAnchor.constraint(equalTo: superView.trailingAnchor),
				topAnchor.constraint(equalTo: superView.topAnchor),
				bottomAnchor.constraint(equalTo: superView.bottomAnchor)
			])
		}

	}

	func removeAllSubviews() {
		subviews.forEach { $0.removeFromSuperview() }
	}
}
