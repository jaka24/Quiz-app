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
   
    var questionNumber = 0
                    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @objc func updateUI(){
    
        questions.text = questionBank[0][0]
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
}
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userImput = sender.currentTitle!
        
        if userImput == questionBank[questionNumber][1] {
            
            sender.backgroundColor = UIColor.green }
        
        else {
            
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber < questionBank.count {
            
            questionNumber += 1
            
    }
        else { questionNumber = 0
            
            }
      
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        


    
    

}
}

