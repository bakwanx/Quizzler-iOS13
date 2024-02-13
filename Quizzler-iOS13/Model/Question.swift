//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Farhan Fadhilah on 04/02/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let optionChoice: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.optionChoice = a
        self.correctAnswer = correctAnswer
    }
}
