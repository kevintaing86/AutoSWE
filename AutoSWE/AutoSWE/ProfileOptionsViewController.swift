//
//  ProfileOptionsViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 11/7/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit
import FirebaseAuth

class ProfileOptionsViewController: UIViewController {
    // MARK: - Outlets and members
    @IBOutlet weak var containerView: UIView!
    
    // MARK: - Actions and methods
    @IBAction func signOut(_ sender: Any) {
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "unwindToAdminLogin", sender: nil)
    }
    
    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
