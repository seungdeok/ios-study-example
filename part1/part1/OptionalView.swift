//
//  OptionalView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/30.
//

import SwiftUI

struct OptionalView: View {
    var seung = Person(name: "seung", age: 20, status: Status(name: "good"))
    var deok = Person(name: "deok", age: 30, status: Status(name: "bad"))
    
    var body: some View {
        VStack {
            if let status = seung.status?.name {
                Text("status:\(status)")
            }
            
            if let name = deok.name {
                Text("name: \(name) age:\(deok.age)")
            }
        }
    }
}

struct Person {
    let name: String?
    let age: Int
    let status: Status?
}

struct Status {
    let name: String?
}

struct OptionalView_Previews: PreviewProvider {
    static var previews: some View {
        OptionalView()
    }
}
