//
//  NetworkService.swift
//  Planty
//
//  Created by Arsatius Regler on 05.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

final class NetworkService: NSObject {

	private let urlSessionConfiguration: URLSessionConfiguration

	lazy var backgroundSession: URLSession = {
		URLSession(configuration: urlSessionConfiguration,
				   delegate: self,
				   delegateQueue: OperationQueue())
	}()

	lazy var session: URLSession = {
		URLSession(configuration: urlSessionConfiguration)
	}()

	init(urlSessionConfiguration: URLSessionConfiguration) {
		self.urlSessionConfiguration = urlSessionConfiguration
		self.urlSessionConfiguration.timeoutIntervalForRequest = 15
		self.urlSessionConfiguration.timeoutIntervalForResource = 30
		super.init()
	}

	func get<T: Decodable>(resource: Resource<T>, completion: @escaping (_ result: Result<T, Error>) -> Void) {
		let task = session.dataTask(with: resource.url) { data, _, error in
			if let data = data {
				do {
					let result = try JSONDecoder().decode(T.self, from: data)
					completion(Result.success(result))
				} catch let error {
					completion(Result.failure(error))
				}
			} else {
				if let error = error {
					completion(Result.failure(error))
				}
			}
		}
		task.resume()
	}

}

extension NetworkService: URLSessionDelegate {}
