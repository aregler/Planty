//
//  DateFormatter.swift
//  Planty
//
//  Created by Arsatius Regler on 17.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Charts
import Foundation

public class DayAxisValueFormatter: NSObject, IAxisValueFormatter {
	weak var chart: BarLineChartViewBase?

	init(chart: BarLineChartViewBase) {
		self.chart = chart
	}

	public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
		let days = ["Mo", "Di", "Mi",
					  "Do", "Fr", "Sa",
					  "So"]
		let index = Int(value)
		guard days.count > index else { return "fail" }
		return days[index]
	}
}
