//
//  SurveyModel.swift
//  AutoSWE
//
//  Created by Kevin Taing on 11/8/16.
//  Copyright © 2016 Kevin Taing. All rights reserved.
//

import Foundation
import UIKit

var Survey_Templates: [UIImage] = [UIImage(named: "Student_Survey")!, UIImage(named: "Adult_Survey")!, UIImage(named: "Volunteer_Survey")!]

struct Question {
    var title: String
    var subQuestions: [String]?
    var answers: [String]
}


class StudentSurvey {
    static let sharedInstance = StudentSurvey()
    
    private var q1: Question = Question(title: "What grade would you give today's event?",subQuestions: nil, answers: ["A", "B", "C", "D", "F"])
    private var q2: Question = Question(title: "What did you like most about today's event?",subQuestions: nil, answers: [""])
    private var q3: Question = Question(title: "Please tell us how much you agree with the following statements about today's event",subQuestions: ["Before this event, I knew what an engineer did", "After this event, I know what an engineer does", "Before this event, I was interested in becoming an engineer", "After this event, I am interested in becoming an engineer", "I see a connection between my interests/passions and engineering", "I worked with a mentor who was helpful and easy to talk to", "I know how to find out more about engineering if I wanted to", "I know my friends would support my interest in engineering", "I enjoyed the fact that this was an event just for girls"], answers: ["Strongly Disagree", "Disagree", "Not Sure", "Agree", "Strongly Agree"])
    private var q4: Question = Question(title: "Think back on your day, for the following questions, choose the best choice that completes the sentence",subQuestions: ["My confidence in problem-solving...", "My confidence in building and designing things...", "My ability to brainstorms solutions to problems...", "My ability to think of many different ways to solve a problem...", "My ability to use design process(brainstorm, design, build, test, redesign)..."], answers: ["Improved", "Stayed the same", "Got worse", "I don't know"])
    private var q5: Question = Question(title: "Please tell us how much you agree with the following statements",subQuestions: ["Engineers are innovative(They come up with new ideas and inventions)", "Engineers are creative", "Engineers do work that is hands-on", "Engineers do work that is fun", "Engineers do work that allows them to help their community and/or society", "Engineers do work in many different career fields", "Engineering is a good career choice for women"], answers: ["Strongly Disagree", "Disagree", "Not Sure", "Agree", "Strongly Agree"])
    private var q6: Question = Question(title: "If you were in charge, how would you change this event",subQuestions: nil, answers: [""])
    private var q7: Question = Question(title: "Would you recommend that other kids participate in eventslike this",subQuestions: nil, answers: ["Yes", "Maybe", "No", "If no, please explain"])
    private var q8: Question = Question(title: "How old are you?",subQuestions: nil, answers: [""])
    private var q9: Question = Question(title: "What grade are you going into?",subQuestions: nil, answers: [""])
    private var q10: Question = Question(title: "I am:",subQuestions: nil, answers: ["Female", "Male"])
    private var q11: Question = Question(title: "With what races or ethnicities do you most identify(choose all that apply)",subQuestions: nil, answers: ["White or European American", "Hispanic, Latino, or Spanish", "Black or African-American", "Asian American", "Native Hawaiian or Pacific Islander", "Native American or Alaskan Native", "Other"])
    private var studentSurveyTemp: [Question]
    private init() {
        studentSurveyTemp = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11]
    }
    
    static func template() -> [Question] {
        return sharedInstance.studentSurveyTemp
    }
}

