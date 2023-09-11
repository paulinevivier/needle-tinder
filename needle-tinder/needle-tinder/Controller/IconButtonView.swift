//
//  IconButtonView.swift
//  needle-tinder
//
//  Created by MacBook Pauline on 04/09/2023.
//

import SwiftUI

struct IconButtonView: View {
    let text: String
    let icon: String?
    let color: Color
    var onClick: () -> Void
    
    var body: some View {
        Button(action: {
            onClick()
        }){
            HStack{
                if icon != nil {
                    Image(systemName: self.icon!)
                        .fontWeight(.bold)
                    .font(.title2)
                }
                Text(self.text)
                    .fontWeight(.bold)
                    .font(.title2)
            }
            .frame(minWidth: 120)
            .padding()
            .background(self.color)
            .foregroundColor(self.color == Color.white ? Color.black : Color.white)
            .cornerRadius(40)
            .shadow(radius: 5)
        }
    }
}

struct IconButtonView_Previews: PreviewProvider {
    static var previews: some View {
        IconButtonView(text: "Button", icon: "questionmark", color: Color.gray, onClick: {})
    }
}
