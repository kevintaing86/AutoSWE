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
    var adminSurveys: [String]!
    var ref = FIRDatabase.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let adminSureveyRef = ref.child("/Admins/\(userUid)/Surveys")
        adminSureveyRef.observe(FIRDataEventType.value, with: { (snapshot) in
            if let surveys = snapshot.value as? [String]{
                self.adminSurveys = surveys
                self.performSegue(withIdentifier: "segueToAdminView", sender: nil)
            }
            else{
                print("Error trying to get the surveys")
            }
        })

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueToAdminView"){
            let destinationController = segue.destination as! UINavigationController
            let targetController = destinationController.topViewController as! AdminTableViewController
            
            targetController.surveys = adminSurveys
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
