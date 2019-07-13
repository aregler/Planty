//
//  Sensor.swift
//  Planty
//
//  Created by Arsatius Regler on 13.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

typealias Euro = Double

protocol ShopItemType {
	var type: String { get }
	var measures: [Measurements] { get }
	var price: Euro { get }
	var selfImage: UIImage? { get }
	var allImages: [UIImage?] { get }
}

struct Sensor: ShopItemType {
	let type: String
	let measures: [Measurements]
	let price: Euro
	let allImages = [Images.sensor_self(),
					 Images.sensor_measurement(),
					 Images.sensor_plant()]
	let selfImage = Images.sensor_self()
}

enum Measurements: String {
	case water = "Wasser"
	case light = "Licht Itensität"
	case fertility = "Fruchtbarkeit"
	case temperature = "Temperatur"
}
