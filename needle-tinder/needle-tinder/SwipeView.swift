//
//  ContentView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 29/08/2023.
//

import SwiftUI

struct SwipeView: View {
    @State var pattern = chooseRandomPattern()
    
    var body: some View {
        VStack {
            AsyncImage(
                url: URL(string: pattern.image),
                content: { image in image.resizable().aspectRatio(contentMode: .fit).frame(maxWidth: 200, maxHeight: 400)
                },
                placeholder: {
                    ProgressView()
                }
            )
            HStack {
                VStack(alignment: .leading) {
                    Label("Pattern displayed", systemImage: "scissors").font(.caption)
                    Text(pattern.name)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Label("Creator name", systemImage: "person.fill").font(.caption)
                    Text(pattern.creator)
                }
            }
            HStack {
                Button(action: {
                    self.pattern = chooseRandomPattern()
                }) {
                    Image(systemName: "checkmark.seal")
                }
                Button(action: {
                    self.pattern = chooseRandomPattern()
                }) {
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

func chooseRandomPattern() -> Pattern {
    @ObservedObject var datas = ReadData()
    let pattern = datas.patterns.randomElement()

    return pattern!
}
