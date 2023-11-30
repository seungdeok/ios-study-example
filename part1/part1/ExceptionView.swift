//
//  ExceptionView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/30.
//

import SwiftUI

struct ExceptionView: View {
    @State var inputNumber = ""
    @State var resultNumber: Float = 0
    
    var body: some View {
        VStack {
            TextField("input: ", text: $inputNumber)
            Text("result: \(resultNumber)")
            Button {
                do {
                    try resultNumber = divide(with: (Float(inputNumber) ?? 1.0))
                } catch DivideError.NoDivided {
                    print("ERROR NoDivided")
                } catch {
                    print(error.localizedDescription)
                }
            } label: {
                Text("Calculate")
            }

        }
    }
    
    func divide(with inputNumber: Float) throws -> Float {
        var result: Float = 0
        
        if inputNumber == 0 {
            throw DivideError.NoDivided
        } else {
            result = 10 / inputNumber
        }
        
        return result
    }
}

enum DivideError: Error {
    case NoDivided
}

struct ExceptionView_Previews: PreviewProvider {
    static var previews: some View {
        ExceptionView()
    }
}
