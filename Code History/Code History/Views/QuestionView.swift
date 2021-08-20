//
//  QuestionView.swift
//  Code History
//
//  Created by Ziad Malik on 8/19/21.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    
    @EnvironmentObject var viewModel: GameViewModel
    
    var body: some View {
        VStack{
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            HStack{
                
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    
                    Button(action: {
                        viewModel.makeGuess(atIndex: answerIndex)
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }).disabled(viewModel.guessWasMade)
                }
            }
            Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            if viewModel.guessWasMade{
                Button(action: {
                        viewModel.displayNextScreen() } ) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
