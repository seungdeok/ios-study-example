//
//  SwitchView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/30.
//

import SwiftUI

struct SwitchView: View {
    @State var direction: CustomDirection = .east
    
    var body: some View {
        VStack {
            switch direction {
                case .north:
                    Text("\(CustomDirection.north.rawValue)")
                case .west:
                    Text("\(CustomDirection.west.rawValue)")
                case .east:
                    Text("\(CustomDirection.east.rawValue)")
                case .south:
                    Text("\(CustomDirection.south.rawValue)")
            }
            
            Button {
                switch direction {
                    case .north:
                        direction = .west
                    case .west:
                        direction = .east
                    case .east:
                        direction = .south
                    case .south:
                        direction = .north
                }
            } label: {
                Text("CIRCLE")
            }

        }
    }
}

enum CustomDirection: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
