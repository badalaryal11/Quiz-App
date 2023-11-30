//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressBar: UIProgressView!
   
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Questions(text: "The Capital of Nepal is Kathmandu.", answer: "True"),
        Questions(text: "The Capital of India is Mumbai.", answer: "False"),
        Questions(text: "The Capital of China is Kathmandu.", answer: "True"),
        ]
        
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
    }


    @IBAction func answerButtonPrssed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // true, false
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer{
            print("Right!")
        }else{
            print("Wrong!")
        }
            
        if questionNumber < quiz.count - 1{
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        updateUI()
        
    }
    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
        
        
    }
}

