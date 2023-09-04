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
            CardView(pattern: self.pattern)
                .frame(height: 600)
            
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
