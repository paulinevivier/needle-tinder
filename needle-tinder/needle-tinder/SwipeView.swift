//
//  ContentView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 29/08/2023.
//

import SwiftUI

struct SwipeView: View {
    var body: some View {
        VStack {
            AsyncImage(
                url: URL(string: "https://annaallenclothing.com/cdn/shop/products/Persephone5_1024x1024@2x.jpg?v=1591068164"),
                content: { image in image.resizable().aspectRatio(contentMode: .fit).frame(maxWidth: 200, maxHeight: 400)
                },
                placeholder: {
                    ProgressView()
                }
            )
            HStack {
                VStack(alignment: .leading) {
                    Label("Pattern displayed", systemImage: "scissors").font(.caption)
                    Text("Persephone Pants")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Label("Creator name", systemImage: "person.fill").font(.caption)
                    Text("Anna Allen Patterns")
                }
            }
            HStack {
                Button(action: {}) {
                    Image(systemName: "checkmark.seal")
                }
                Button(action: {}) {
                    Image(systemName: "xmark.seal")
                }
            }
        }
        .padding()
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}
