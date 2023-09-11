//
//  MatchesListView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 04/09/2023.
//

import SwiftUI

struct MatchesListView: View {
    @State var matchesList: [Pattern]
    
    var body: some View {
        NavigationView {
            List(self.matchesList) { pattern in
                
                NavigationLink {
                    PatternDetailView(pattern: pattern)
                } label: {
                    PatternRowView(pattern: pattern)
                }
            }
            .navigationTitle("My patterns")
        }
    }
}

struct MatchesListView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesListView(matchesList: ReadData().patterns)
    }
}
