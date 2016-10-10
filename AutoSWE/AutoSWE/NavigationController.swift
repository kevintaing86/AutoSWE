//
//  NavigationController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 10/10/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.backgroundColor = UIColor(colorLiteralRed: 103.0/255.0, green: 58.0/255.0, blue: 183.0/255.0, alpha: 1.0)
        self.navigationBar.barTintColor = UIColor(colorLiteralRed: 103.0/255.0, green: 58.0/255.0, blue: 183.0/255.0, alpha: 1.0)
    }
    
}
