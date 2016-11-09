//
//  SurveyTemplatesViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 11/9/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class SurveyTemplatesViewController: UIViewController {

    // MARK: - Outlets and members
    @IBOutlet weak var templateNameLabel: UILabel!
    @IBOutlet weak var templateImageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    // MARK: - Actions and methods
    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func changeImage(_ sender: Any) {
        pageControl.updateCurrentPageDisplay()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        templateImageView.image = Survey_Templates[pageControl.currentPage]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
