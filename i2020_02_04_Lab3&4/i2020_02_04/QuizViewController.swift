//
//  ViewController.swift
//  i2020_02_04
//
//  Created by Bradford, Phillip on 2/4/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var questionBox: UITextField!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let Qs =  ListOfQuestions()
    
    public var selection: Bool?
    public var score: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionBox.text = Qs.allQs[0].statement
    }
    
    @IBAction func selectTrue(_ sender: Any) {
        print("selectTrue")
        selection = true
    }
    @IBAction func selectFalse(_ sender: Any) {
        print("selectFalse")
        selection = false
    }
    
    @IBAction func nextSelected(_ sender: Any) {
        let a = Qs.currentQuestionNumbers()
        if selection == Qs.allQs[a].isTrue{
            score = Qs.correctAnswer()
            scoreLabel.text = "Score: \(score) /6"
        } else{
            score = Qs.incorrectAnswer()
            print(score)
        }
        
        let n = Qs.nextQuestionNumber()
        questionBox.text = Qs.allQs[n].statement
        hintLabel.text = ""
        
    }
    
    @IBAction func hintSelected(_ sender: Any) {
        let b = Qs.provideHint()
        hintLabel.text = b
        
    }
    
}



