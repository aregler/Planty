//
//  UICollectionView+Identifiable.swift
//  Interface
//
//  Created by Joan Disho on 23.07.18.
//  Copyright © 2018 Bayerischer Rundfunk. All rights reserved.
//

import UIKit

extension UICollectionView {

    func register<C: UICollectionViewCell>(cellType: C.Type) where C: ClassIdentifiable {
        register(cellType.self, forCellWithReuseIdentifier: cellType.reuseId)
    }

    func register<C: UICollectionViewCell>(cellType: C.Type) where C: NibIdentifiable & ClassIdentifiable {
        register(cellType.nib, forCellWithReuseIdentifier: cellType.reuseId)
    }

    final func register<C: UICollectionReusableView>(supplementaryType: C.Type, ofKind elementKind: String)
        where C: NibIdentifiable & ClassIdentifiable {
            self.register(
                supplementaryType.nib,
                forSupplementaryViewOfKind: elementKind,
                withReuseIdentifier: supplementaryType.reuseId
            )
    }

    func dequeueReusableCell<C: UICollectionViewCell>(withCellType type: C.Type = C.self,
													  forIndexPath indexPath: IndexPath) -> C where C: ClassIdentifiable {
        guard let cell = dequeueReusableCell(withReuseIdentifier: type.reuseId, for: indexPath) as? C
            else { fatalError("Couldn't dequeue a UICollectionViewCell with identifier: \(type.reuseId)") }
        return cell
    }

    final func dequeueReusableSupplementaryView<C: UICollectionReusableView>
        (ofKind elementKind: String, forIndexPath indexPath: IndexPath, type: C.Type = C.self) -> C
        where C: ClassIdentifiable {
            guard let view = self.dequeueReusableSupplementaryView(
                ofKind: elementKind,
                withReuseIdentifier: type.reuseId,
                for: indexPath
                ) as? C
                else {
                    fatalError(
                        "Couldn't dequeue a UICollectionReusableView with identifier: \(type.reuseId)"
                    )
                }
            return view
    }
}
