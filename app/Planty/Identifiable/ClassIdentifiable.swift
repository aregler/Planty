//
//  ClassIdentifiable.swift
//  Interface
//
//  Created by Joan Disho on 23.07.18.
//  Copyright © 2018 Bayerischer Rundfunk. All rights reserved.
//

import UIKit

protocol ClassIdentifiable: class {
    static var reuseId: String { get }
}

extension ClassIdentifiable {
    static var reuseId: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ClassIdentifiable {}
