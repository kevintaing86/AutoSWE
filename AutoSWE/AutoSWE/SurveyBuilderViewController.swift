//
//  SurveyBuilderViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 11/14/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class SurveyBuilderViewController: UIViewController {
    // MARK: - Outlets and memebers
    var pageConrolIndex: Int!
    
    // MARK: - Actions and methods
    override func viewDidLoad() {
        super.viewDidLoad()

        let sureyType = Survey_Templates[pageConrolIndex]
    }
}
