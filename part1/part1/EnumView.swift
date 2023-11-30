//
//  EnumView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/30.
//

import SwiftUI

struct EnumView: View {
    var direction: Direction = .north
    
    var body: some View {
        Text("\(direction.rawValue)")
    }
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

struct EnumView_Previews: PreviewProvider {
    static var previews: some View {
        EnumView()
    }
}
