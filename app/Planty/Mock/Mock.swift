//
//  Mock.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Charts
import Foundation

struct Mock {

	static let citrusShort = """
	Die Zitrone oder Limone (von arabisch ليمون, DMG laimūn „Zitrone“) ist die etwa faustgroße Frucht des Zitronenbaums (Citrus × limon) aus der Gattung der Zitruspflanzen (Citrus). Es handelt sich um eine Gruppe von Sorten, die aus einer Kreuzung zwischen Bitterorange (Citrus × aurantium) und Zitronatzitrone (Citrus medica) entstanden ist,[1] wahrscheinlich im Norden Indiens. Um das Jahr 1000 sind erste sichere Nachweise sowohl in China als auch im Mittelmeerraum zu finden.
	Die immergrünen Bäume bringen länglich-ovale Früchte (die Zitronen) mit gelber oder grün-gelber Schale hervor. Das saftige, saure Fruchtfleisch enthält rund 3,5–8 % Zitronensäure und viel Vitamin C. Aus Zitronen werden Saft, Zitronensäure, ätherisches Öl und Pektin gewonnen.
	"""

	static let cucumberShort = """
	Die Gurke (Cucumis sativus), auch als Kukumer und Gartengurke bezeichnet, ist eine Art der Gattung Gurken (Cucumis) aus der Familie der Kürbisgewächse. Sie gehört zu den wirtschaftlich bedeutendsten Gemüsearten. Mit der unterschiedlichen Nutzung zusammenhängend, werden im Wesentlichen zwei Sortengruppen unterschieden: die Salatgurke (oder Schlangengurke) und die Einlege- oder Gewürzgurke. Der Verein zur Erhaltung der Nutzpflanzenvielfalt hat die Gurke zum Gemüse des Jahres für 2019 und 2020 ernannt.
	"""

	static let strawShort = """
Die Erdbeeren (Fragaria) sind eine Gattung in der Unterfamilie der Rosoideae innerhalb der Familie der Rosengewächse (Rosaceae). Zur Gattung Fragaria gehören ungefähr zwanzig Arten, meistens in den gemäßigten Zonen der Nordhalbkugel vorkommend, und verschiedene Unterarten; daneben gibt es viele hybride Formen mit zahlreichen Kultursorten.

Erdbeeren spielen mindestens seit der Steinzeit eine Rolle in der menschlichen Ernährung. Die europäischen Wald-Erdbeeren (Fragaria vesca) wurden während des Mittelalters auch flächig angebaut. Erst im 17. bzw. 18. Jahrhundert gelangten die beiden großfrüchtigen (und oktoploiden) amerikanischen Arten – die Scharlach-Erdbeere (Fragaria virginiana) und die Chile-Erdbeere (Fragaria chiloensis) – nach Europa. Aus deren Kreuzung entstand um 1750 in der Bretagne die Urform der Gartenerdbeere (Fragaria × ananassa),[1] von der die meisten heute kultivierten Sorten abstammen.

Aus botanischer Sicht zählt die Scheinfrucht einer Erdbeere nicht zu den Beeren, sondern zu den Sammelfrüchten bzw. Sammelnussfrüchten oder nach anderer Auffassung zu den Sammelachänenfrüchten (Achenecetum)

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

	static var cucumber: Plant {
		let description = PlantDescription(fruit: "Gurke",
										   leaves: "grün",
										   harvest: "Sommer",
										   bloom: "gelb", short: cucumberShort)
		let plant = Plant(name: "Gurke",
						  kind: .cucumber,
						  image: URL(string: "https://www.mein-schoener-garten.de/sites/default/files/styles/achor_navigation_s/public/gurken-aufmacher-iStock-497571672.jpg")!,
						  description: description)
		return plant
	}

	static var strawberry: Plant {
		let description = PlantDescription(fruit: "Erdbeere",
										   leaves: "grün",
										   harvest: "Sommer",
										   bloom: "weiss", short: strawShort)
		let plant = Plant(name: "Erdbeere",
						  kind: .strawberry,
						  image: URL(string: "https://www.lubera.com/images/1200/Erdbeere-Waedenswil-6-6er-Traeger_1.jpg")!,
						  description: description)
		return plant
	}


	struct Shop {
		static let sensor = Sensor(type: "SOSMART", measures: [.fertility, .water, .light, .temperature], price: 15.00)
		static let smartPot = SmartPot(type: "POT", measures: [.fertility, .water, .temperature], price: 60.00)
	}

	struct Charts {
		static let barChartData: BarChartDataSet = {
			let entries: [BarChartDataEntry] = [
				BarChartDataEntry(x: 0, y: 30),
				BarChartDataEntry(x: 1, y: 20),
				BarChartDataEntry(x: 2, y: 100),
				BarChartDataEntry(x: 3, y: 80),
				BarChartDataEntry(x: 4, y: 0)
			]

			let set = BarChartDataSet(entries: entries.reversed(), label: "Feuchtigkeit")

			return set
		}()

		static let emptyBarChartData: BarChartDataSet = {
			let entries: [BarChartDataEntry] = [
				BarChartDataEntry(x: 0, y: 0),
				BarChartDataEntry(x: 1, y: 0),
				BarChartDataEntry(x: 2, y: 0),
				BarChartDataEntry(x: 3, y: 0),
				BarChartDataEntry(x: 4, y: 0),
				BarChartDataEntry(x: 5, y: 0),
				BarChartDataEntry(x: 6, y: 0)
			]

			let set = BarChartDataSet(entries: entries.reversed(), label: "Feuchtigkeit")

			return set
		}()
	}
}
