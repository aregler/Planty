//
//  Mock.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

struct Mock {

	static let citrusShort = """
	Die Zitrone oder Limone (von arabisch ليمون, DMG laimūn „Zitrone“) ist die etwa faustgroße Frucht des Zitronenbaums (Citrus × limon) aus der Gattung der Zitruspflanzen (Citrus). Es handelt sich um eine Gruppe von Sorten, die aus einer Kreuzung zwischen Bitterorange (Citrus × aurantium) und Zitronatzitrone (Citrus medica) entstanden ist,[1] wahrscheinlich im Norden Indiens. Um das Jahr 1000 sind erste sichere Nachweise sowohl in China als auch im Mittelmeerraum zu finden.
	Die immergrünen Bäume bringen länglich-ovale Früchte (die Zitronen) mit gelber oder grün-gelber Schale hervor. Das saftige, saure Fruchtfleisch enthält rund 3,5–8 % Zitronensäure und viel Vitamin C. Aus Zitronen werden Saft, Zitronensäure, ätherisches Öl und Pektin gewonnen.
	"""

	static var citrusPlant: Plant {
		let description = PlantDescription(fruit: "Zitrone",
										   leaves: "grün",
										   harvest: "Sommer",
										   bloom: "weiss", short: citrusShort)
		let plant = Plant(name: "Citrus × limon",
						  kind: .citrus,
						  image: URL(string: "https://www.meine-orangerie.de/wp-content/uploads/2010/03/iStock_000015552114Small.jpg")!,
						  description: description)
		return plant
	}

	struct Shop {
		static let sensor = Sensor(type: "SOSMART", measures: [.fertility, .water, .light, .temperature], price: 15.00)
		static let smartPot = SmartPot(type: "POT", measures: [.fertility, .water, .temperature], price: 60.00)
	}
}
