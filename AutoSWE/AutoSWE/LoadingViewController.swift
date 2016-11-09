//
//  LoadingViewController.swift
//  AutoSWE
//
//  Created by Kevin Taing on 10/4/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class LoadingViewController: UIViewController {

    var userUid = ""
    var adminSurveys: [String]?
    var ref = FIRDatabase.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let adminRef = ref.child("/Admins/\(userUid)")
        adminRef.observe(FIRDataEventType.value, with: { (snapshot) in
            if snapshot.hasChild("Surveys"){
                self.adminSurveys = snapshot.childSnapshot(forPath: "Surveys").value as? [String]
                self.performSegue(withIdentifier: "segueToAdminView", sender: nil)
            }
            else{
                self.performSegue(withIdentifier: "segueToAdminView", sender: nil)
            }
        })
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueToAdminView" && adminSurveys != nil){
            let destinationController = segue.destination as! UINavigationController
            let targetController = destinationController.topViewController as! AdminTableViewController
            targetController.surveys = adminSurveys!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
