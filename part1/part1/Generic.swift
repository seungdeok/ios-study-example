//
//  Generic.swift
//  part1
//
//  Created by 정승덕 on 2023/12/01.
//

import SwiftUI

struct Generic: View {
    @State var inputValue = ""
    @State var stack = Stack<Int>()
    
    var body: some View {
        VStack {
            TextField("input", text: $inputValue)
            
            Button {
                stack.push(input: Int(inputValue) ?? 0)
            } label: {
                Text("PUSH")
            }
            

            
            Button {
                stack.show()
            } label: {
                Text("SHOW")
            }

        }
    }
}

struct Stack<T> {
    var data: [T] = []
    
    mutating func push(input: T) {
        data.append(input)
    }
    
    func show() {
        data.forEach { item in
            print(item)
        }
    }
}

struct Generic_Previews: PreviewProvider {
    static var previews: some View {
        Generic()
    }
}
