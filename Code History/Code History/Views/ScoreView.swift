//
//  ScoreView.swift
//  Code History
//
//  Created by Ziad Malik on 8/19/21.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    var body: some View {
        ZStack{
            GameColor.mainColor.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Spacer()
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack{
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }.font((.system(size: 30)))
                Spacer()
                NavigationLink(destination: GameView(), label: {BottomTextView(str: "Re-take Quiz")})
            }.foregroundColor(.white)
            .navigationBarHidden(true)
        }.multilineTextAlignment(.center)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 9, incorrectGuesses: 2))
    }
}
