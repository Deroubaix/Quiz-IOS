//
//  Question.swift
//  Quiz IOS
//
//  Created by Marisha Deroubaix on 15/08/18.
//  Copyright © 2018 Marisha Deroubaix. All rights reserved.
//

import Foundation

class Question {
  
  let questionText : String
  let answer : Bool
  
  init(text: String, correctAnswer: Bool) {
    questionText = text
    answer = correctAnswer
  }
}


