//
//  ContentView.swift
//  Code History
//
//  Created by Ziad Malik on 8/14/21.
//

import SwiftUI



struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    let question =  Question(questionText: "Who is the Greatest Basketball Player of All Time ?", possibleAnswers: ["Lebron", "Micheal", "Kobe"], correctAnswerIndex: 0)
    
    let accentColor = GameColor.accentColor
    var body: some View {
        ZStack{
            GameColor.mainColor.ignoresSafeArea()
            VStack{
            
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer().frame(width: 100, height: 160, alignment: .center)
                QuestionView(question: viewModel.currentQuestion)
            
            }
        }.foregroundColor(Color.white)
        .navigationBarBackButtonHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: {EmptyView()}))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
