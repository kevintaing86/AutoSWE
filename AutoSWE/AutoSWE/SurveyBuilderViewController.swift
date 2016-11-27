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
    @IBOutlet weak var eventTitleField: UITextField!
    
    // MARK: - Actions and methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   // table view delegate and data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(pageConrolIndex == 1){
            return StudentSurvey.template().count
        }
        else{
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.text = "blah"
        
        return cell
    }
}
