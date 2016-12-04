//
//  SurveyBuilderViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 11/14/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class SurveyBuilderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: - Outlets and memebers
    var pageConrolIndex: Int!
    var customSurvey: [Question]!
    var selectedQuestion: Question?
    @IBOutlet weak var eventTitleField: UITextField!
    
    // MARK: - Actions and methods
    override func viewDidLoad() {
        super.viewDidLoad()
        surveyType()
        self.dismissKeyboard()
    }
    
    @IBAction func saveSurvey(_ sender: Any) {
    }
    
    @IBAction func unwindToSurveyBuilder(_ unwindSegue: UIStoryboardSegue){
    }
    
    func surveyType() {
        switch pageConrolIndex{
        case 0:
            customSurvey = StudentSurvey.template()
            break
        case 1:
            break
        case 2:
            break
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueToQuestionBuilder"){
            let vc = segue.destination as! QuestionBuilderViewController
            vc.question = selectedQuestion
        }
    }
    
   // table view delegate and data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(pageConrolIndex == 0){
            return customSurvey.count
        }
        else{
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.text = customSurvey[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete){
            customSurvey.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedQuestion = customSurvey[indexPath.row]
        performSegue(withIdentifier: "segueToQuestionBuilder", sender: nil)
    }
}




