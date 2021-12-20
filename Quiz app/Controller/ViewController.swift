//
//  ViewController.swift
//  Quiz app
//
//  Created by John-Marc Attis on 12/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questions: UILabel!
    
    var questionBank = [["5 + 2 = 9", "False"],
                        ["9 - 2 = 8", "False"],
                        ["2 + 3 = 5", "True"],
                        ["1 - 1 = -1", "False"]]
   
    var quizbrain = QuizBrain()


  
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateUI()
        
      
    }

    @objc func updateUI(){
        
        questions.text = quizbrain.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        let userInput = sender.currentTitle!
        
        let checkAnswer = quizbrain.checkAnswer(userInput)
        
        if checkAnswer {
            
            sender.backgroundColor = UIColor.green
        }
        


        else {
            sender.backgroundColor = UIColor.red
        }
       
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
}


