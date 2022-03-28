//
//  UITableViewCell+ReuseCleanUp.swift
//  Bartering
//
//  Created by Erika Sito on 25/03/22.
//

import UIKit

extension UICollectionViewCell {
    
    func removeViews() {
        contentView.subviews.forEach { $0.removeFromSuperview() }
    }
}
