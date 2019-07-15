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

	@IBOutlet weak var lineChartView: BarChartView!

	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

		// mock

		let entries =  BarChartDataSet()
		let e1 = BarChartDataEntry(x: 0, y: 3)
		let e2 = BarChartDataEntry(x: 2, y: 1)
		let e3 = BarChartDataEntry(x: 4, y: 4)
		entries.stackLabels = ["Montag", "Dienstag", "Mittwoch"]
		entries.append(e1)
		entries.append(e2)
		entries.append(e3)
		entries.label = "Regen"

		let d = BarChartData(dataSet: entries)
		lineChartView?.data = d
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
