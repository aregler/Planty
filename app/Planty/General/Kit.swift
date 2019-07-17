//
//  Kit.swift
//  Planty
//
//  Created by Arsatius Regler on 17.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation
import UserNotifications

final class Kit {

	func scheduleMockNotification(for plant: Plant) {
		let notificationCenter = UNUserNotificationCenter.current()

		let options: UNAuthorizationOptions = [.alert, .sound, .badge]
		notificationCenter.requestAuthorization(options: options) {
			(didAllow, error) in
			if !didAllow {
				print("User has declined notifications")
			}
		}

		let content = UNMutableNotificationContent()
		content.title = "⚠️ Achtung! ⚠️"
		content.body = "\n Bitte düngen Sie Ihre \(plant.kind.string)"

		let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
		let uuidString = UUID().uuidString
		let request = UNNotificationRequest(identifier: uuidString,
											content: content, trigger: trigger)

		// Schedule the request with the system.
		notificationCenter.add(request) { (error) in
			if let error = error {
				print(error)
			}
		}
	}
}
