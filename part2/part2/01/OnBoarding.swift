//
//  OnBoarding.swift
//  part2
//
//  Created by 정승덕 on 2023/12/13.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        VStack {
            Text("What`s New in Photos")
                .font(.system(size: 35))
                .bold()
            
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    Text("HEADLINE").font(.headline)
                    Text("CONTENT CONTENTCONTENTCONTENTCONTENTCONTENT").font(.subheadline)
                }
                .padding(.trailing)
            }
            
            HStack {
                Image(systemName: "doc.on.clipboard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    Text("HEADLINE").font(.headline)
                    Text("CONTENT CONTENTCONTENTCONTENTCONTENTCONTENT").font(.subheadline)
                }
                .padding(.trailing)
            }
            
            HStack {
                Image(systemName: "sparkles.square.filled.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    Text("HEADLINE").font(.headline)
                    Text("CONTENT CONTENTCONTENTCONTENTCONTENTCONTENT").font(.subheadline)
                }
                .padding(.trailing)
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("BUTTON")
                    .frame(width: 350, height: 52)
                
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            }
        }
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
