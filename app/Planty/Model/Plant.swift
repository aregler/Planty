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

enum PlantKind: String {
	case citrus
}

struct PlantDescription {
	let fruit: String
	let leaves: String
	let harvest: String
	let bloom: String
	let short: String
}

//https://api.unsplash.com/photos/search?query=plant&client_id=3b99a69cee09770a4a0bbb870b437dbda53efb22f6f6de63714b71c4df7c9642
