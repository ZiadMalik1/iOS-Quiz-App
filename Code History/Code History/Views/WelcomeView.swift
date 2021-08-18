//
//  WelcomeView.swift
//  Code History
//
//  Created by Ziad Malik on 8/18/21.
//

import SwiftUI

struct WelcomeView: View {
    let mainColor = GameColor.mainColor
    let accentColor = GameColor.accentColor
    var body: some View {
        NavigationView {
            ZStack{
                mainColor.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment:.center, spacing: 0, content: {
                        Text("Select the Correct")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.bottom, -18.0)
                        Text("Answers to the Following Questions.").font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                    })
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay, Let's Go")
                        })
                }.foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
