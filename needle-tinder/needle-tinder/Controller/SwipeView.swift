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
                    IconButtonView(text: "Match!", icon: "checkmark", color: Color.green, onClick: {
                        patternsPool.remove(at: patternsPool.firstIndex(of: currentPattern)!)
                    })
                    IconButtonView(text: "Pass", icon: "xmark", color: Color.red, onClick: {
                        patternsPool.remove(at: patternsPool.firstIndex(of: currentPattern)!)
                    })
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
