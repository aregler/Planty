//
//  ControllerViewModel.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

public class ControllerViewModel {

	public var onState: ((PaginationViewState) -> Void)?

	public var state: PaginationViewState = .idle {
		didSet {
			let newState = state
			if Thread.isMainThread {
				onState?(newState)
			} else {
				DispatchQueue.main.async { [weak self] in
					guard let me = self else { return }
					me.onState?(newState)
				}
			}
		}
	}

	public init() {}
}
