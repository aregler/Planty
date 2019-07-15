//
//  App.swift
//  Planty
//
//  Created by Arsatius Regler on 15.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import UIKit

struct App {

	private static var stack: [State] = [State()]

	static var current: State {
		return stack.last ?? State()
	}

	@discardableResult
	static func popState() -> State? {
		return stack.popLast()
	}

	static func push(state: State) {
		stack.append(state)
	}

	static func replaceCurrentState(with state: State) {
		push(state: state)
		stack.remove(at: stack.count - 2)
	}

}

extension App {
	static func push(
							flowCoordinator: FlowCoordinatorType? = App.current.flowCoordinator,
							isVoiceOverRunning: Bool = App.current.isVoiceOverRunning,
							isTest: Bool = App.current.isTest,
							tabCoordinator: TabCoordinatorType? = App.current.tabCoordinator) {
		push(state: State(flowCoordinator: flowCoordinator,
						  isTest: isTest,
						  isVoiceOverRunning: isVoiceOverRunning,
						  tabCoordinator: tabCoordinator))
	}

	static func replaceCurrent(flowCoordinator: FlowCoordinatorType? = App.current.flowCoordinator,
									  isVoiceOverRunning: Bool = App.current.isVoiceOverRunning,
									  isTest: Bool = App.current.isTest,
									  tabCoordinator: TabCoordinatorType? = App.current.tabCoordinator) {
		replaceCurrentState(with: State(flowCoordinator: flowCoordinator,
										isTest: isTest,
										isVoiceOverRunning: isVoiceOverRunning,
										tabCoordinator: tabCoordinator))
	}
}

