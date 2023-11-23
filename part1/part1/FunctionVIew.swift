//
//  FunctionVIew.swift
//  part1
//
//  Created by 정승덕 on 2023/11/23.
//

import SwiftUI

struct FunctionVIew: View {
    @State var num: Int = 1
    
    var body: some View {
        VStack {
            Text("\(num)")
            Button {
                increment()
            } label: {
                Text("increment")
            }

        }
    }
    
    func increment() -> Void {
        num = num + 1
    }
}

struct FunctionVIew_Previews: PreviewProvider {
    static var previews: some View {
        FunctionVIew()
    }
}
