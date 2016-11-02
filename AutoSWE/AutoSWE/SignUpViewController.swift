////
////  SignUpViewController.swift
////  AutoSWE
////
////  Created by Kevin Taing on 10/14/16.
////  Copyright © 2016 Kevin Taing. All rights reserved.
////

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class SignUpViewController: UIViewController {

    // MARK: - Outlets and members
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    var adminRef = FIRDatabase.database().reference().child("/Admins")
    var adminModel: AdminModel!
    
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
            FIRAuth.auth()?.createUser(withEmail: emailTextField.text!, password: passwordTextField.text!){
                (user, error) in
                if(error != nil){
                    self.errorLabel.text = error?.localizedDescription
                    self.errorLabel.isHidden = false
                }
                else{
                    self.adminModel = AdminModel(with: (user?.uid)!, Surveys: nil, UserEmail: (user?.email)!)
                    self.adminRef.updateChildValues(self.adminModel.toFBModel() as! [AnyHashable : Any])
                    
                    self.performSegue(withIdentifier: "segueToLoading", sender: nil)
                }
            }
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueToLoading"){
            let vc = segue.destination as! LoadingViewController
            vc.userUid = adminModel.Uid
        }
    }
    
    
}






