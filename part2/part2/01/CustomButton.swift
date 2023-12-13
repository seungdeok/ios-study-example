//
//  CustomButton.swift
//  part2
//
//  Created by 정승덕 on 2023/12/13.
//

import SwiftUI

struct CustomButton: View {
    var label: String
    var bgColor: Color
    var textColor: Color
    
    var body: some View {
        Button {
            //
        } label: {
            Text(label)
                .padding()
                .background(bgColor)
                .foregroundColor(textColor)
                .cornerRadius(10)
                .bold()
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(label: "BUTTON", bgColor: .blue, textColor: .white)
    }
}
