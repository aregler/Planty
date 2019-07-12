//
//  CommunityPlant.swift
//  Planty
//
//  Created by Arsatius Regler on 05.07.19.
//  Copyright © 2019 Arsatius Regler. All rights reserved.
//

import Foundation

struct CommunityPlant: Decodable {
	let description: String?
	let alt_description: String?
	let urls: ImageURLs
	let user: CommunityUser
	let width: Int
	let height: Int
}

struct ImageURLs: Decodable {
	let regular: String
	let small: String
}

struct CommunityUser: Decodable {
	let username: String
}
