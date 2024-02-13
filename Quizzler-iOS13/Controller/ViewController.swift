//
//  ViewController.swift
//  Quizzler-iOS13

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
   
    @IBOutlet weak var aOptionButton: UIButton!
    @IBOutlet weak var bOptionButton: UIButton!
    @IBOutlet weak var cOptionButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
  
    var quizBrain = QuizBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressBar.progress = 0.0
        updateUi()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        print(sender.currentTitle!)
       
        let userAnswer = sender.currentTitle! // True, False
        let result = quizBrain.checkAction(userAnswer)
        if result {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
      
        quizBrain.nextQuestion()  
//        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
//       
    }
//    
    @objc func updateUi(){
        questionLabel.text = quizBrain.getQuestionObj().question
        aOptionButton.setTitle(quizBrain.getQuestionObj().optionChoice[0], for: UIControl.State.normal)
        bOptionButton.setTitle(quizBrain.getQuestionObj().optionChoice[1], for: UIControl.State.normal)
        cOptionButton.setTitle(quizBrain.getQuestionObj().optionChoice[2], for: UIControl.State.normal)
        aOptionButton.backgroundColor = UIColor.clear
        bOptionButton.backgroundColor = UIColor.clear
        cOptionButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
    
}

