//
//  Question Bank.swift
//  Quiz IOS
//
//  Created by Marisha Deroubaix on 16/08/18.
//  Copyright © 2018 Marisha Deroubaix. All rights reserved.
//

import Foundation

class QuestionBank {
  
  var list  = [Question]()
  init() {
    
    let item = Question(text: "A segue is like a link, taking you from one view controller to another.", correctAnswer: true)
    
    list.append(item)
    
    list.append(Question(text: "In order to create a motion gesture, you need to use the function: motionEnded.", correctAnswer: true))
    
    list.append(Question(text: "In order to work with audio files, we need to import the framework: AudioPlayer.", correctAnswer: false))
    
    list.append(Question(text: "Core Data describes data with a high level data model expressed in terms of entities and their relationships plus fetch requests that retrieve entities meeting specific criteria.", correctAnswer: true))
    
    list.append(Question(text: "JSON (JavaScript Object Notation) is used primarily to transmit data between a server and web application.", correctAnswer: true))
    
    list.append(Question(text: "The following will create a table with 5 rows: func tableView(_UITableView, numberOfRows section: Int) -> Int {return 5}.", correctAnswer: false))
    
    list.append(Question(text: "Firebase is a way of storing you data online and accessing it very easily.", correctAnswer: true))
    
    list.append(Question(text: "UINavigationControllerDelegate is: Navigate to another page.", correctAnswer: false))
    
    list.append(Question(text: "Persistent Storage is: Storage on a device", correctAnswer: true))
    
    list.append(Question(text: "To add an item on to the end of an array, we use: addItem.", correctAnswer: false))
    
    list.append(Question(text: "Xcode is an: IDE.", correctAnswer: true))
    
    list.append(Question(text: "A user-interface element that the user can tap on is called a: Label.", correctAnswer: false))
    
    list.append(Question(text: "To create some code that will run when a button is tapped we need a: IBAction.", correctAnswer: true))
  }
  
  
}
