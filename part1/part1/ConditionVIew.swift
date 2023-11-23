//
//  ConditionVIew.swift
//  part1
//
//  Created by 정승덕 on 2023/11/23.
//

import SwiftUI

struct ConditionVIew: View {
    var condition = true
    
    var body: some View {
        if (condition) {
            Text("true")
        } else {
            Text("false")
        }
    }
}

struct ConditionVIew_Previews: PreviewProvider {
    static var previews: some View {
        ConditionVIew()
    }
}
