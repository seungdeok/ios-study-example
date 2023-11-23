//
//  CollectionView.swift
//  part1
//
//  Created by 정승덕 on 2023/11/23.
//

import SwiftUI

struct CollectionView: View {
    var arrData: [String] = ["apple", "bananas"]
    var setData: Set<String> = ["apple", "bananas"]
    var dictData = ["apple": "사과"]
    
    var body: some View {
        VStack {
            Text(arrData[0])
            Text(setData.description)
            Text(dictData["apple"]!)
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
