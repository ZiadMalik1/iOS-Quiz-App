//
//  BMI.swift
//  Code History
//
//  Created by Ziad Malik on 8/19/21.
//

import SwiftUI


struct BMI: View {
    let accentColor = GameColor.accentColor
    @State private var name: String = ""
    

    var body: some View {
        ZStack{
            GameColor.mainColor.ignoresSafeArea()
            VStack{
                Button(action: {
                    print("Hello")
                }, label:{
                    ChoiceTextView(choiceText: "6' 1")})
            }
        }.foregroundColor(.white)
        .multilineTextAlignment(.center)
    }
}

struct BMI_Previews: PreviewProvider {
    static var previews: some View {
        BMI()
    }
}
