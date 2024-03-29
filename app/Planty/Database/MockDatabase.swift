//
//  MockDatabase.swift
//  Planty
//
//  Created by Arsatius Regler on 17.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Charts
import Foundation

final class MockDatabase {
	private var plants: [Plant]

	init() {
		let plant = Mock.citrusPlant
		plants = [plant]
		checkMoistureLevel(for: plant)
	}

	func getPlants() -> [Plant] {
		return plants
	}

	private func checkMoistureLevel(for plant: Plant) {
		if plant.moistureLevel < 10.00 {
			App.current.kit.scheduleMockNotification(for: plant, reason: .water)
		}
	}

	func add(plant: Plant) {
		checkMoistureLevel(for: plant)
		plants.append(plant)
	}

	func getMoistureData(for plant: Plant) -> BarChartData {
		switch plant.kind {
		case .citrus:
			let data = Mock.Charts.barChartData
			let entry = BarChartDataEntry(x: 4, y: Double(plant.moistureLevel))
			let newX = BarChartDataSet(entries: [entry], label: nil)
			newX.colors = [.red]

			let old = BarChartDataSet(entries: [BarChartDataEntry(x: 5, y: 12), BarChartDataEntry(x: 6, y: 90)], label: nil)
			old.colors = [.gray]

			return BarChartData(dataSets: [data, newX, old])
		case .cucumber:
			let entry = BarChartDataEntry(x: 4, y: Double(plant.moistureLevel))
			let newX = BarChartDataSet(entries: [entry], label: nil)
			newX.colors = [.red]
			return BarChartData(dataSets: [Mock.Charts.emptyBarChartData, newX])
		case .strawberry:
			let entry = BarChartDataEntry(x: 4, y: Double(plant.moistureLevel))
			let newX = BarChartDataSet(entries: [entry], label: nil)
			newX.colors = [.red]
			return BarChartData(dataSets: [Mock.Charts.emptyBarChartData, newX])
		}
	}
}
