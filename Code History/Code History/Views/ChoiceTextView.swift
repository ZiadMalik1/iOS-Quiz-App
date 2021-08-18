//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Ziad Malik on 8/17/21.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    
    var body: some View {
        Text(choiceText).font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice!")
    }
}
