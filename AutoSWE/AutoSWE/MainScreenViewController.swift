//
//  MainScreenViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 9/12/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    // MARK: - Outlets and members
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var surveyTextField: UITextField!
    
    
    // MARK: - Actions and methods
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize.height = 400
        self.dismissKeyboard()
    }
    
    @IBAction func takeSurvey(sender: AnyObject) {
    }
    
    @IBAction func adminLogin(sender: AnyObject) {
        performSegueWithIdentifier("toAdminLoginSegue", sender: nil)
    }
    
    @IBAction func unwindSegue(unwindSegue: UIStoryboardSegue){
    }
}
