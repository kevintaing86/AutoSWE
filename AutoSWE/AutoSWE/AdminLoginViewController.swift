//
//  AdminLoginViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 9/13/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class AdminLoginViewController: UIViewController {

    // MARK: - Outlets and members
    
    // MARK: - Actions and methods
    @IBAction func cancel(_ sender: AnyObject) {
        performSegue(withIdentifier: "unwindToMainScreen", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
