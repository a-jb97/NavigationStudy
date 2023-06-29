//
//  SoldierView.swift
//  RankOfArmy
//
//  Created by 전민석 on 2023/06/29.
//

import SwiftUI

struct SoldierView: View {
    var index: Int
    
    var body: some View {
        AsyncImage(url: URL(string: "\(soldierImage[index])")){ image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .navigationTitle("\(soldiers[index])")
        .padding()
    }
}

struct SoldierView_Previews: PreviewProvider {
    static var previews: some View {
        SoldierView(index: 0)
    }
}
