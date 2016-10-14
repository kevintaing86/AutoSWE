//
//  SignUpViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 10/14/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - Outlets and members
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: - Actions and methods
    @IBAction func submitCredentials(_ sender: AnyObject) {
        if(emailTextField.text == "" || passwordTextField.text == "" || confirmTextField.text == ""){
            errorLabel.text = "All fields must be populated"
            errorLabel.isHidden = false
        }
        else if(passwordTextField.text != confirmTextField.text){
            errorLabel.text = "Passwords did not match"
            errorLabel.isHidden = false
        }
        else{
            print("Ya! It kinda worked")
        }
    }
    
    @IBAction func cancel(_ sender: AnyObject) {
        performSegue(withIdentifier: "unwindToLogin", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dismissKeyboard()
        errorLabel.isHidden = true
        scrollView.contentSize.height = 400
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
