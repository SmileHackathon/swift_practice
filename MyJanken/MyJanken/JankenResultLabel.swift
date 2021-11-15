//
//  JankenResultLabel.swift
//  MyJanken
//
//  Created by KaitoKudo on 2021/11/08.
//

import SwiftUI

struct JankenResultLabel: View {
    @Binding var answerNumber: Int
    
    var body: some View {
        if answerNumber == 0 {
            Text("これからじゃんけんをします")
                .font(.system(size: 20))
                .padding(.bottom)
        } else if answerNumber == 1 {
            Text("グー")
                .font(.system(size: 20))
                .padding(.bottom)
        } else if answerNumber == 2 {
            Text("チョキ")
                .font(.system(size: 20))
                .padding(.bottom)
        } else {
            Text("パー")
                .font(.system(size: 20))
                .padding(.bottom)
        }
    }
}

struct JankenResultLabel_Previews: PreviewProvider {
    static var previews: some View {
        JankenResultLabel(answerNumber: .constant(0))
    }
}
