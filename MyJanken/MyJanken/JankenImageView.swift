//
//  JankenImageView.swift
//  MyJanken
//
//  Created by KaitoKudo on 2021/11/08.
//

import SwiftUI

struct JankenImageView: View {
    @Binding var answerNumber: Int
    
    var body: some View {
        if answerNumber == 0 {
            Spacer()
        } else if answerNumber == 1 {
            Image("gu")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
        } else if answerNumber == 2 {
            Image("choki")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
        } else {
            Image("pa")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct JankenImageView_Previews: PreviewProvider {
    static var previews: some View {
        JankenImageView(answerNumber: .constant(3))
            .background(Color.background)
    }
}
