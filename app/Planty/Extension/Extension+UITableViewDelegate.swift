//
//  Extension+UITableViewDelegate.swift
//  Planty
//
//  Created by Arsatius Regler on 13.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

extension UITableViewDelegate where Self: UIViewController {
	func addCornerRadius(to cell: UITableViewCell, size: CGSize) {
		let path = UIBezierPath(roundedRect: cell.bounds,
								byRoundingCorners: .allCorners,
								cornerRadii: size)
		let maskLayer = CAShapeLayer()
		maskLayer.frame = view.bounds
		maskLayer.path = path.cgPath
		cell.layer.mask = maskLayer
	}
}
