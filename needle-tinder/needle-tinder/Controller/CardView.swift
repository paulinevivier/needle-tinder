//
//  CardView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 01/09/2023.
//

import SwiftUI

struct CardView: View {
    var pattern: Pattern
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack(alignment: .leading) {
                
                Image(self.pattern.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.75)
                    .clipped()
                
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Text(self.pattern.name)
                            .font(.title)
                            .bold()
                        Text(self.pattern.creator)
                            .font(.subheadline)
                            .bold()
                    }
                    Spacer()
                }.padding(.horizontal)
            }
            .padding(.bottom)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(pattern: Pattern()).frame(height: 600).padding()
    }
}
