//
//  AdminModel.swift
//  AutoSWE
//
//  Created by Kevin Taing on 10/1/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import Foundation

class AdminModel{
    var Uid: String!
    var Surveys: [String]?
    var UserEmail: String!
    
    init(){
        Uid = ""
        Surveys = [""]
        UserEmail = ""
    }
    
    init (with Uid: String, Surveys: [String]?, UserEmail: String){
        self.Uid = Uid
        self.Surveys = Surveys
        self.UserEmail = UserEmail
    }
    
    func toFBModel() -> NSDictionary{
        return [Uid : [["Surveys" : Surveys], ["UserEmail" : UserEmail]]]
    }
}
