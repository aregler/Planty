//
//  State.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

struct State {
	let database: MockDatabase
	let flowCoordinator: FlowCoordinatorType?
	let isTest: Bool
	let isUITest: Bool
	let isVoiceOverRunning: Bool
	let kit: Kit
	let shouldAnimate: () -> Bool
	let tabCoordinator: TabCoordinatorType?


	init(db: MockDatabase = MockDatabase(),
		flowCoordinator: FlowCoordinatorType? = nil,
		isTest: Bool = NSClassFromString("XCTestCase") != nil,
		isVoiceOverRunning: Bool = UIAccessibility.isVoiceOverRunning,
		kit: Kit = Kit(),
		shouldAnimate: @escaping () -> Bool = { !(App.current.isVoiceOverRunning || UIAccessibility.isReduceMotionEnabled) },
		tabCoordinator: TabCoordinatorType? = nil) {

		self.database = db
		let isUITest = CommandLine.arguments.contains("--uitesting")
		self.flowCoordinator = flowCoordinator
		self.isUITest = isUITest
		self.isTest = isTest
		self.isVoiceOverRunning = isVoiceOverRunning
		self.kit = kit
		self.shouldAnimate = shouldAnimate
		self.tabCoordinator = tabCoordinator
	}
}
