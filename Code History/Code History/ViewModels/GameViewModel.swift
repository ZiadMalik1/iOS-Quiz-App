//
//  GameViewModel.swift
//  Code History
//
//  Created by Ziad Malik on 8/19/21.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    
    @Published private var game = Game()
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    
    var currentQuestion: Question {game.currentQuestion}
    
    var questionProgressText: String {"\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"}
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion]{
            return true
        }
        else{
            return false
        }
    }
    
    var gameIsOver: Bool{
        game.isOver
    }
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestions(atIndex: index)
    }
    
    func displayNextScreen(){
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.mainColor
            }
            else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            }
            
            else{
                return GameColor.incorrectGuess
            }
        }
        else{
            return GameColor.mainColor
        }
    }
    
}
