//
//  PatternDetailView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 06/09/2023.
//

import SwiftUI

struct PatternDetailView: View {
    @State var pattern: Pattern
    
    var body: some View {
        ScrollView {
            
            Image(self.pattern.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(edges: .top)
                .frame(maxWidth: .infinity, maxHeight: 500)
                .clipped()
            
            VStack(alignment: .leading) {
                Text(self.pattern.name)
                    .font(.title)
                
                Text(self.pattern.creator)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(self.pattern.name)")
                    .font(.title2)
                    .padding(.bottom, -2.0)
                Text(self.pattern.description)
            }
            .padding()
        }
        .navigationTitle(self.pattern.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PatternDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PatternDetailView(pattern: Pattern())
    }
}
