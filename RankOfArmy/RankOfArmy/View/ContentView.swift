//
//  ContentView.swift
//  RankOfArmy
//
//  Created by 전민석 on 2023/06/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("장교")) {
                    ForEach(0...9, id: \.self) { index in
                        NavigationLink {
                            OfficerView(index: index)
                        } label: {
                            Text("\(officers[index])")
                        }
                        .font(.body)
                    }
                }
                .font(.title3)
                
                Section(header: Text("준사관")) {
                    ForEach(0...0, id: \.self) { index in
                        NavigationLink {
                            WarrentOfficerView(index: index)
                        } label: {
                            Text("\(warrentOfficers[index])")
                        }
                        .font(.body)
                    }
                }
                .font(.title3)
                
                Section(header: Text("부사관")) {
                    ForEach(0...3, id: \.self) { index in
                        NavigationLink {
                            PettyOfficerView(index: index)
                        } label: {
                            Text("\(pettyOfficers[index])")
                        }
                        .font(.body)
                    }
                }
                .font(.title3)
                
                Section(header: Text("병사")) {
                    ForEach(0...3, id: \.self) { index in
                        NavigationLink {
                            SoldierView(index: index)
                        } label: {
                            Text("\(soldiers[index])")
                        }
                        .font(.body)
                    }
                }
                .font(.title3)
            }
            .navigationTitle("🪖 군 계급")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
