//
//  ContentView.swift
//  Code History
//
//  Created by Ziad Malik on 8/14/21.
//

import SwiftUI



struct GameView: View {
    
    @State var mainColor = GameColor.mainColor
    
    let question =  Question(questionText: "Who is the Greatest Basketball Player of All Time ?", possibleAnswers: ["Lebron", "Micheal", "Kobe"], correctAnswerIndex: 0)
    
    let accentColor = GameColor.accentColor
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1 / 10").font(.callout)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 174, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Spacer()
                HStack{
                    
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        
                        Button(action: {
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                        
                    }
                    
                }
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }.foregroundColor(Color.white)
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
