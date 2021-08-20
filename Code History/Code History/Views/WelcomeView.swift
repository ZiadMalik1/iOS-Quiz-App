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
                    VStack(alignment:.center, spacing: 0, content: {
                        Text("Welcome").font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                        Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        NavigationLink(
                            destination: GameView(),
                            label: {
                                Image("AppLogo")
                                    .resizable()
                                    .scaledToFit()
                            })
                    })
                    Spacer()
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
