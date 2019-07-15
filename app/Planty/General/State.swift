//
//  State.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

struct State {
	let flowCoordinator: FlowCoordinatorType?
	let isTest: Bool
	let isUITest: Bool
	let isVoiceOverRunning: Bool
	let shouldAnimate: () -> Bool
	let tabCoordinator: TabCoordinatorType?


	init(flowCoordinator: FlowCoordinatorType? = nil,
				isTest: Bool = NSClassFromString("XCTestCase") != nil,
				isVoiceOverRunning: Bool = UIAccessibility.isVoiceOverRunning,
				shouldAnimate: @escaping () -> Bool = { !(App.current.isVoiceOverRunning || UIAccessibility.isReduceMotionEnabled) },
				tabCoordinator: TabCoordinatorType? = nil) {
		let isUITest = CommandLine.arguments.contains("--uitesting")
		self.flowCoordinator = flowCoordinator
		self.isUITest = isUITest
		self.isTest = isTest
		self.isVoiceOverRunning = isVoiceOverRunning
		self.shouldAnimate = shouldAnimate
		self.tabCoordinator = tabCoordinator
	}
}
