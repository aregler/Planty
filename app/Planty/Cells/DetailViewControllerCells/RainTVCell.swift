//
//  RainTVCell.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Charts
import UIKit

class RainTVCell: UITableViewCell, NibIdentifiable {

	@IBOutlet weak var barChartView: HorizontalBarChartView!

	func configure(with plant: Plant) {

		barChartView.data = App.current.database.getMoistureData(for: plant)

		let xAxis = barChartView.xAxis
		xAxis.labelPosition = .bottom
		xAxis.drawAxisLineEnabled = true
		xAxis.valueFormatter = DayAxisValueFormatter(chart: self.barChartView)

		let leftAxis = barChartView.leftAxis
		leftAxis.drawAxisLineEnabled = true
		leftAxis.drawGridLinesEnabled = true
		leftAxis.axisMinimum = 0
		leftAxis.axisMaximum = 100

		let rightAxis = barChartView.rightAxis
		rightAxis.enabled = false

	}

	override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
