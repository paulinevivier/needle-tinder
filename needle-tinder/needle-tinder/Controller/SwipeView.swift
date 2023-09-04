//
//  ContentView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 29/08/2023.
//

import SwiftUI

struct SwipeView: View {
    @State var patternsPool = ReadData().patterns
    
    var body: some View {
        if patternsPool.isEmpty {
            VStack {
                PopupView(title: "No more patterns!", content: "You have seen through all the available patterns. Come back later for new features.")
            }
        } else {
            let currentPattern = chooseRandomPattern(patternsPool: self.patternsPool)
            VStack {
                CardView(pattern: currentPattern)
                    .frame(height: 600)
                
                HStack {
                    Button(action: {
                        patternsPool.remove(at: patternsPool.firstIndex(of: currentPattern)!)
                    }) {
                        Image(systemName: "checkmark.seal")
                    }
                    Button(action: {
                        patternsPool.remove(at: patternsPool.firstIndex(of: currentPattern)!)
                    }) {
                        Image(systemName: "xmark.seal")
                    }
                }
            }
            .padding()
        }
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}

func chooseRandomPattern(patternsPool: [Pattern]) -> Pattern {
    let pattern = patternsPool.randomElement()

    return pattern!
}
