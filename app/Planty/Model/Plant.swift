//
//  Plant.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

enum PlantKind {}

struct Plant {
	let name: String
	let kind: PlantKind
	let image: URL
}
