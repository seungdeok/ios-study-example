//
//  Protocol.swift
//  part1
//
//  Created by 정승덕 on 2023/11/30.
//

import SwiftUI

struct Protocol: View {
    var calculator: Calculator = Calculator()
    @State var num: Int = 0
    
    var body: some View {
        VStack {
            Text("\(num)")
            Button {
                num = calculator.increment(with: num)
            } label: {
                Text("Increment")
            }
            Button {
                num = calculator.decrement(with: num)
            } label: {
                Text("Decrement")
            }
        }

    }
}

struct Calculator: Calculable {
    func increment(with num: Int) -> Int {
        return num + 1
    }
    
    func decrement(with num: Int) -> Int {
        return num - 1
    }
    
    
}

protocol Calculable {
    func increment(with num: Int) -> Int
    func decrement(with num: Int) -> Int
}

struct Protocol_Previews: PreviewProvider {
    static var previews: some View {
        Protocol()
    }
}
