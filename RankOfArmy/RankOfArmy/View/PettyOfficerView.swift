//
//  PettyOfficerView.swift
//  RankOfArmy
//
//  Created by 전민석 on 2023/06/29.
//

import SwiftUI

struct PettyOfficerView: View {
    var index: Int
    
    var body: some View {
        AsyncImage(url: URL(string: "\(pettyOfficerImage[index])")){ image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .navigationTitle("\(pettyOfficers[index])")
        .padding()
    }
}

struct PettyOfficerView_Previews: PreviewProvider {
    static var previews: some View {
        PettyOfficerView(index: 0)
    }
}
