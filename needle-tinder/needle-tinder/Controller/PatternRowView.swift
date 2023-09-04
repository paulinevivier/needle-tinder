//
//  PatternRowView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 04/09/2023.
//

import SwiftUI

struct PatternRowView: View {
    var pattern: Pattern
    
    var body: some View {
        HStack {
            Image(pattern.image)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text(pattern.name)
                    .font(.title3)
                Text(pattern.creator)
                    .font(.body)
            }
            
            Spacer()
        }
    }
}

struct PatternRowView_Previews: PreviewProvider {
    static var previews: some View {
        PatternRowView(pattern: Pattern(name: "Pattern", creator: "Creator", image: "Pattern"))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
