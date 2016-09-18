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
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    // MARK: - Actions and methods
    @IBAction func cancel(_ sender: AnyObject) {
        performSegue(withIdentifier: "unwindToMainScreen", sender: nil)
    }
    
    @IBAction func login(_ sender: AnyObject) {
        if(usernameTextField.text == ""){
            errorLabel.text = "must enter a username"
            errorLabel.isHidden = false
        }
    }
    
    @IBAction func forgotPassword(_ sender: AnyObject) {
    }
    
    @IBAction func signUp(_ sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        scrollView.contentSize.height = 400
        self.dismissKeyboard()
    }
}
