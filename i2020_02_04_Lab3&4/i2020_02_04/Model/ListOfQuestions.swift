//
//  ListOfQuestions.swift
//  i2020_02_04
//
//  Created by Bradford, Phillip on 2/4/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import Foundation

public class ListOfQuestions {
    
    public var correctAnswers: Int = 0
    public var totalQuestionsAsked: Int = 0
    private var currentQuestionNumber: Int = 0
    
    public let allQs = [
        Question(statement: "Alaska is in South America", isTrue: false),
        Question(statement: "Central America is a continent", isTrue: false),
        Question(statement: "Asia is the largest continent", isTrue: true),
        Question(statement: "Greece borders the Mediterranean sea", isTrue: true),
        Question(statement: "Texas is the largest US state", isTrue: false),
        Question(statement: "The Atlantic Ocean is the world's largest", isTrue: false)]
    
    public let allHints = ["Alaska is north", "Part of North America", "It is really big", "Ask George", "Alaska is pretty big too", "Pacific is pretty big too"
    ]
             
    public func correctAnswer() -> Int {
        correctAnswers = correctAnswers + 1
        totalQuestionsAsked = totalQuestionsAsked + 1
        return correctAnswers
    }
    
    public func incorrectAnswer() -> Int {
        totalQuestionsAsked = totalQuestionsAsked + 1
        return correctAnswers
    }
    
    public func nextQuestionNumber() -> Int {
        currentQuestionNumber = currentQuestionNumber + 1
        return currentQuestionNumber % allQs.count
    }

    public func currentQuestionNumbers() -> Int {
        return currentQuestionNumber
    }
    
    public func provideHint() -> String {
        return allHints[currentQuestionNumber]
    }
}
