//
//  WarrentOfficerView.swift
//  RankOfArmy
//
//  Created by 전민석 on 2023/06/29.
//

import SwiftUI

struct WarrentOfficerView: View {
    var index: Int
    
    var body: some View {
        AsyncImage(url: URL(string: "\(warrentOfficerImage[index])")){ image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .navigationTitle("\(warrentOfficers[index])")
        .padding()
    }
}

struct WarrentOfficerView_Previews: PreviewProvider {
    static var previews: some View {
        WarrentOfficerView(index: 0)
    }
}
