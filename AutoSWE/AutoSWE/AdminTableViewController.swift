//
//  AdminTableViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 9/27/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class AdminTableViewController: UITableViewController {
    
    // MARK: - Outlets and Members
    var userUid: String = ""
    var Ref = FIRDatabase.database().reference()
    var surveys = [""]
    
    // MARK: - Actions and Methods
    @IBAction func addSurvey(_ sender: AnyObject) {
    }
    
    @IBAction func openProfile(_ sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) { 
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
    
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (surveys.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = surveys[indexPath.row]
        return cell
    }

}




