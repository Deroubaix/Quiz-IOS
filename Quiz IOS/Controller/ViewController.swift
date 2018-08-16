//
//  ViewController.swift
//  Quiz IOS
//
//  Created by Marisha Deroubaix on 15/08/18.
//  Copyright © 2018 Marisha Deroubaix. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
  let allQuestions = QuestionBank()
  var pickedAnswer : Bool = false
  var questionNumber : Int = 0
  var score = 0
  
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var progressLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    nextQuestion()
    
  }
  
  @IBAction func answerPressed(_ sender: AnyObject) {
    if sender.tag == 1 {
      pickedAnswer = true
    } else if sender.tag == 2{
      pickedAnswer = false
    }
    
    checkAnswer()
    
    questionNumber = questionNumber + 1
    nextQuestion()
    
    }
  
  func updateUI() {
    scoreLabel.text = "Score: \(score)"
    progressLabel.text = "\(questionNumber + 1 ) / 13"
    progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    
  }
  
  func nextQuestion() {
    
    if questionNumber <= 12 {
    
    questionLabel.text = allQuestions.list[questionNumber].questionText
      updateUI()
      
    } else {
      
      let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over? ", preferredStyle: .alert)
      let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
        self.startOver()
      }
      alert.addAction(restartAction)
      present(alert, animated: true, completion: nil)
      
    }
  }
  
  func checkAnswer() {
    
    let correctQuestion = allQuestions.list[questionNumber].answer
    
    if correctQuestion == pickedAnswer {
      score += 1
      ProgressHUD.showSuccess("Correct!")
      
    } else {
      ProgressHUD.showError("Wrong.")
    }
  }
  
  func startOver() {
    score = 0
    questionNumber = 0
    nextQuestion()
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

