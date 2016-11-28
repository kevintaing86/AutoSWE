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
    @IBOutlet weak var containerView: UIView!

    
    // MARK: - Actions and methods
    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func createSurvey(_ sender: Any) {
        performSegue(withIdentifier: "segueToSurveyBuilder", sender: nil)
    }
    
    func changePageControl(swipeGesture: UISwipeGestureRecognizer) {
        switch swipeGesture.direction{
            case UISwipeGestureRecognizerDirection.left:
                pageControl.currentPage += 1
            case UISwipeGestureRecognizerDirection.right:
                pageControl.currentPage -= 1
            default:
                break
        }
        
        templateImageView.image = Survey_Templates[pageControl.currentPage]
        changeNameLabel(page: pageControl.currentPage)
    }
    
    func changeNameLabel(page: Int) {
        switch page {
        case 0:
            templateNameLabel.text = "Student Survey"
        case 1:
            templateNameLabel.text = "Adult Survey"
        case 2:
            templateNameLabel.text = "Volunteer Survey"
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueToSurveyBuilder"){
            let temp = segue.destination as! SurveyBuilderViewController
            temp.pageConrolIndex = pageControl.currentPage
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.layer.cornerRadius = 4.0
        templateImageView.layer.cornerRadius = 8.0
        
        let leftSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SurveyTemplatesViewController .changePageControl(swipeGesture:)))
        let rightSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SurveyTemplatesViewController .changePageControl(swipeGesture:)))
        leftSwipe.direction = UISwipeGestureRecognizerDirection.left
        containerView.addGestureRecognizer(leftSwipe)
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        containerView.addGestureRecognizer(rightSwipe)
        
        templateImageView.image = Survey_Templates[pageControl.currentPage]
        changeNameLabel(page: pageControl.currentPage)
    }
}
