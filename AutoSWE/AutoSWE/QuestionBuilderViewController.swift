//
//  QuestionBuilderViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 12/2/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit

class QuestionBuilderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Outlets and members
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleField: UITextView!
    @IBOutlet weak var allowMultipleAnswers: UISwitch!
    @IBOutlet weak var tableView: UITableView!
    var question: Question?
    var alertTextField: UITextField!
    
    // MARK: - Actions and methods
    @IBAction func newAnswer(_ sender: Any) {
        alert(title: "New Answer", message: "enter a new answer choice")
    }
    
    @IBAction func newSubquestion(_ sender: Any) {
        alert(title: "New Subquestion", message: "enter a new subquestion")
    }
    
    @IBAction func cancel(_ sender: Any) {
    }
    
    @IBAction func saveQuestion(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(question != nil){
            titleField.text = question!.title
        }
        tableView.separatorStyle = .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addTextField(textField: UITextField){
        textField.placeholder = "enter here"
        alertTextField = textField
    }
    
    func alert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        let add: UIAlertAction!
        
        if(title == "New Answer"){
            add = UIAlertAction(title: "Add", style: .default, handler: {action in
                self.question?.answers.append(self.alertTextField.text!)
                self.tableView.reloadData()
            })
        }
        else{
            add = UIAlertAction(title: "Add", style: .default)
        }
        
        alertController.addAction(cancel)
        alertController.addAction(add)
        
        alertController.addTextField(configurationHandler: addTextField)
        
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - Table view delegate and data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(question != nil){
            return question!.answers.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        if(question != nil){
            cell.textLabel?.text = question?.answers[indexPath.row]
            return cell
        }
        else{
            return cell
        }
    }
    
}








