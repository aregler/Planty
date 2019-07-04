//
//  Plant.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

struct Plant {
	let name: String
	let kind: PlantKind
	let image: URL
	let description: PlantDescription
}

enum PlantKind {
	case citrus
}

struct PlantDescription {
	let fruit: String
	let leaves: String
	let harvest: String
	let bloom: String
	let short: String
}
