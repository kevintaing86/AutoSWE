//
//  UIViewControllerExtensions.swift
//  AutoSWE
//
//  Created by Kevin Taing on 9/13/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func dismissKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController .hideKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func hideKeyboard() {
        view.endEditing(true)
    }
}