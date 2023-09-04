//
//  IconButtonView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 04/09/2023.
//

import SwiftUI

struct IconButtonView: View {
    let text: String
    let icon: String
    let color: Color
    var onClick: () -> Void
    
    var body: some View {
        Button(action: {
            onClick()
        }){
            HStack{
                Image(systemName: self.icon)
                    .fontWeight(.bold)
                    .font(.title2)
                Text(self.text)
                    .fontWeight(.bold)
                    .font(.title2)
            }
            .frame(width: 120)
            .padding()
            .background(self.color)
            .foregroundColor(.white)
            .cornerRadius(40)
        }
    }
}

struct IconButtonView_Previews: PreviewProvider {
    static var previews: some View {
        IconButtonView(text: "Button", icon: "questionmark", color: Color.gray, onClick: {})
    }
}
