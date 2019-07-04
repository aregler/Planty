//
//  PaginationViewState.swift
//  Planty
//
//  Created by Arsatius Regler on 04.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

/// Overall state a view representing a collection or array controller can be in.
///
/// - idle: initial state
/// - loading: Entire view is in loading state
/// - errorLoading: Initial fetch encountered an error
/// - loaded: Initial fetch was successful
public enum PaginationViewState {
	/// initial state
	case idle
	/// Entire view is in loading state
	case loading
	/// Initial fetch encountered an error
	case errorLoading(Error?)
	/// Initial fetch was successful
	case loaded
	/// loading More
	case loadingMore
	/// Error loading more
	case errorLoadingMore(Error?)
	/// Loaded More Items
	case loadedMore([IndexPath])
}

extension PaginationViewState: Equatable {
	public static func == (lhs: PaginationViewState, rhs: PaginationViewState) -> Bool {
		switch (lhs, rhs) {
		case (.idle, .idle): return true
		case (.loading, .loading): return true
		case (.errorLoading, .errorLoading): return true
		case (.loaded, .loaded): return true
		default: return false
		}
	}
}
