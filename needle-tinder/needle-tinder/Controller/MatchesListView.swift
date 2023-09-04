//
//  MatchesListView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 04/09/2023.
//

import SwiftUI

struct MatchesListView: View {
    var matchesList: [Pattern]
    var body: some View {
        List(matchesList) { pattern in
            PatternRowView(pattern: pattern)
        }
    }
}

struct MatchesListView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesListView(matchesList: ReadData().patterns)
    }
}
