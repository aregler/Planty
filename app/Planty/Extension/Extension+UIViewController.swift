//
//  Extension+UIViewController.swift
//  Planty
//
//  Created by Arsatius Regler on 05.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

extension UIViewController {

	/*
	The idea behind is to treat ViewControllers as Containers
	Basically one could add an empty ViewController as child if there is no working network connection (e.g.)
	or just the default ViewController if the loading process was ok
	*/

	/**
	adds a ChildViewController to the current ViewController.
	*/
	func add(_ child: UIViewController) {
		addChild(child)
		view.addSubview(child.view)
		child.didMove(toParent: self)
	}

	/**
	adds a child view controller to the current ViewController once with the legacy autoresizing mask.
	If there is already a child of type T this function does nothing
	*/
	func addOnceAutoresizing<T: UIViewController>(_ child: T, sizeToFitSuperview: Bool = true) {
		guard !children.contains(where: { $0 is T }) else { return }

		add(child)

		if sizeToFitSuperview {
			child.view.frame = self.view.frame
			child.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		}
	}

	/**
	removes all child view controller from a view controller.
	*/
	func clearChildren() {
		for child in children {
			child.remove()
		}
	}

	/**
	removes the current ChildViewController from the parent ViewController.
	*/
	func remove() {
		guard parent != nil else { return }
		willMove(toParent: nil)
		removeFromParent()
		view.removeFromSuperview()
	}
}
