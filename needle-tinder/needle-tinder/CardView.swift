//
//  CardView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 01/09/2023.
//

import SwiftUI

struct CardView: View {
    @State var pattern: Pattern
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack(alignment: .leading) {
                AsyncImage(
                    url: URL(string: pattern.image),
                    content: { image in image.resizable().aspectRatio(contentMode: .fit).frame(maxWidth: 200, maxHeight: 400)},
                    placeholder: {ProgressView()}
                )
                .scaledToFill()
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
        CardView(pattern: Pattern(name: "Pattern", creator: "Creator", image: "https://media.istockphoto.com/id/1037702528/photo/sewing-pattern.jpg?s=612x612&w=0&k=20&c=9v6-XmGiL-T33ETqsFcz5Sxe1uvJ4io5aJtMaUk2ZhE=")).frame(height: 400).padding()
    }
}
