//
//  SimpleView.swift
//  part2
//
//  Created by 정승덕 on 2023/12/13.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("HEADLINE")
                .font(.headline)
                .bold()
                .padding()
            Text("SUB HEADLINE")
                .font(.subheadline)
                .padding()
            Text("BODY")
                .font(.body)
                .padding()
            Button {
                //
            } label: {
                Text("CLICK")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            }

            
        }
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleView()
    }
}
