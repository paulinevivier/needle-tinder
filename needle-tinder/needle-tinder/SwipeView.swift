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
                VStack {
                    Text("Sewing project")
                    Label("Persephone Pants", systemImage: "scissors")
                }
                VStack {
                    Text("Creator name")
                    Label("Anna Allen Patterns", systemImage: "person.fill")
                }
            }
        }
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}
