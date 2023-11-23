//
//  StructView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/23.
//

import SwiftUI

struct StructView: View {
    @State var data = DataStruct()
    
    var body: some View {
        VStack {
            Text("\(data.num)")
            HStack {
                Button {
                    data.increment()
                } label: {
                    Text("INCREMENT")
                }
                
                Button {
                    data.decrement()
                } label: {
                    Text("DECREMENT")
                }
            }
        }
    }
}

struct DataStruct {
    var num: Int = 1
    
    mutating func increment() -> Void {
        num = num + 1
    }
    
    mutating func decrement() -> Void {
        num = num - 1
    }
}

struct StructView_Previews: PreviewProvider {
    static var previews: some View {
        StructView()
    }
}
