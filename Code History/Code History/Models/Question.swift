//
//  Question.swift
//  Code History
//
//  Created by Ziad Malik on 8/17/21.
//

import Foundation

struct Question: Hashable {
    
    static var allQuestions = [
        
        Question(questionText: "Who is the Greatest Basketball Player of All Time ?", possibleAnswers: ["Lebron", "Micheal", "Kobe"], correctAnswerIndex: 0),
        Question(questionText: "Who is the Greatest Ihsaan Basketball Player of All Time ?", possibleAnswers: ["Shaakir", "Ziad", "Amir"], correctAnswerIndex: 1),
        Question(questionText: "Who is the Greatest WWE Wrestler of All Time ?", possibleAnswers: ["HHH", "John Cena", "Undertaker"], correctAnswerIndex: 2),
        
                                
    ]
    
    var questionText: String
    var possibleAnswers: [String]
    var correctAnswerIndex: Int
    
}
