//
//  VariableView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/23.
//

import SwiftUI

struct VariableView: View {
    var name: String = "Deok"
    var age: Int = 28
    var height: Float = 200.1
    var weight: Double = 100.5
    var isVisible: Bool = true
    
    var body: some View {
        VStack {
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(isVisible.description)")
        }
    }
}

struct VariableView_Previews: PreviewProvider {
    static var previews: some View {
        VariableView()
    }
}
