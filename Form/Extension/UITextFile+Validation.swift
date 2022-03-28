//
//  UITextFile+Validation.swift
//  Bartering
//
//  Created by Erika Sito on 25/03/22.
//

import UIKit

extension UITextField {
    
    func valid() {
        self.layer.borderColor = UIColor.systemGreen.cgColor
    }
    
    func invalid() {
        self.layer.borderColor = UIColor.systemRed.cgColor
    }
}
