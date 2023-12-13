//
//  Layout.swift
//  part2
//
//  Created by 정승덕 on 2023/12/13.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Text("HEADLINE")
                .font(.headline)
                .padding()
                
            Text("SUB HEADLINE")
                .font(.subheadline)
                .padding()
            
            Text("BODY")
                .font(.body)
                .padding()
            
            HStack {
                CustomButton(label: "BUTTON", bgColor: .blue, textColor: .white)
                CustomButton(label: "BUTTON", bgColor: .green, textColor: .white)
            }
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "arrow.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text("BUTTON")
                }
                .padding()
                .background(.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
            }
        }
    }
}

struct Layout_Previews: PreviewProvider {
    static var previews: some View {
        Layout()
    }
}
