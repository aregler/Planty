//
//  AddProductViewController.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

class AddProductViewController: UIViewController {

	@IBOutlet weak var idTextField: UITextField!
	@IBOutlet weak var addIDButton: UIButton!

	@IBOutlet weak var scanButton: UIButton!

	override func viewDidLoad() {
        super.viewDidLoad()
    }

	@IBAction func onAddPlant(_ sender: Any) {
		guard let idString = idTextField.text, let id = Int(idString) else { return }
		if id == 7 {
			App.current.database.add(plant: Mock.cucumber)
		}

		if id == 42 {
			App.current.database.add(plant: Mock.strawberry)
			App.current.kit.scheduleMockNotification(for: Mock.strawberry, reason: .fertilise)
		}

		navigationController?.popViewController(animated: true)
	}
}
