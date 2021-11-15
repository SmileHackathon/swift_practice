//
//  ContentView.swift
//  MyJanken
//
//  Created by KaitoKudo on 2021/11/08.
//

import SwiftUI

struct ContentView: View {
    @State private var answerNumber = 0
    
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                JankenImageView(answerNumber: $answerNumber)
                JankenResultLabel(answerNumber: $answerNumber)
                PlayJankenButton(answerNumber: $answerNumber)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let background = Color("background")
}
