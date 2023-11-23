//
//  LoopView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/23.
//

import SwiftUI

struct LoopView: View {
    var arrData: [String] = ["apple", "bananas"]
    var body: some View {
        VStack {
            ForEach(arrData, id: \.self) { item in
                Text("\(item)")
            }
        }
    }
}

struct LoopView_Previews: PreviewProvider {
    static var previews: some View {
        LoopView()
    }
}
