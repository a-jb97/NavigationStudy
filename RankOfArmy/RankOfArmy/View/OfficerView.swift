//
//  OfficerView.swift
//  RankOfArmy
//
//  Created by 전민석 on 2023/06/29.
//

import SwiftUI

struct OfficerView: View {
    var index: Int
    
    var body: some View {
        AsyncImage(url: URL(string: "\(officerImage[index])")){ image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .navigationTitle("\(officers[index])")
        .padding()
    }
}

struct OfficerView_Previews: PreviewProvider {
    static var previews: some View {
        OfficerView(index: 0)
    }
}
