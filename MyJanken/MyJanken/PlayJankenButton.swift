//
//  PlayJankenButton.swift
//  MyJanken
//
//  Created by KaitoKudo on 2021/11/08.
//

import SwiftUI

struct PlayJankenButton: View {
    @Binding var answerNumber: Int
    
    var body: some View {
        Button(action: {
            var newAnswerNumber = 0
            
            repeat {
                newAnswerNumber = Int.random(in: 1...3)
            } while answerNumber == newAnswerNumber
            
            answerNumber = newAnswerNumber
        }) {
            Text("じゃんけんをする")
                .frame(maxWidth: .infinity, maxHeight: 80)
                .font(.system(size: 30))
                .background(Color.blue)
                .foregroundColor(.white)
        }
    }
}

struct PlayJankenButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayJankenButton(answerNumber: .constant(0))
    }
}
