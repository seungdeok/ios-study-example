//
//  ClassView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/23.
//

import SwiftUI

struct ClassView: View {
    let userStruct = UserStruct(name: "Deok", age: 20)
    @ObservedObject var userClass = UserClass(name: "Deok", age: 40)
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Text("Hello, \(userStruct.name) \(userStruct.age)")
            Text("Hello, \(userClass.name) \(userClass.age)")
            
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
            
            Button {
                userClass.updateName()
            } label: {
                Text("UPDATE")
            }

        }
    }
}

struct UserStruct {
    let name: String
    let age: Int
}

class UserClass: ObservableObject {
    @Published var name: String
    let age: Int
    
    func updateName() {
        name = "Seungdeok"
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView()
    }
}
