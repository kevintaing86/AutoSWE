//
//  AdminTableViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 9/27/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit
import FirebaseDatabase

class AdminTableViewController: UITableViewController {
    
    // MARK: - Outlets and Members
    var userUid: String = ""
    
    // MARK: - Actions and Methods
    @IBAction func addSurvey(_ sender: AnyObject) {
    }
    
    @IBAction func openProfile(_ sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userUid)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
