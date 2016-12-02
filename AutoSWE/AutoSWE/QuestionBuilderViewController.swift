//
//  QuestionBuilderViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 12/2/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class QuestionBuilderViewController: UIViewController {

    // MARK: - Outlets and members
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleField: UITextView!
    @IBOutlet weak var allowMultipleAnswers: UISwitch!
    
    // MARK: - Actions and methods
    @IBAction func newAnswer(_ sender: Any) {
    }
    
    @IBAction func newSubquestion(_ sender: Any) {
    }
    
    @IBAction func cancel(_ sender: Any) {
    }
    
    @IBAction func saveQuestion(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view delegate and data source
    
}
