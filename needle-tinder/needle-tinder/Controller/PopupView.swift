//
//  PopupView.swift
//  NeedleTinder
//
//  Created by MacBook Pauline on 04/09/2023.
//
import SwiftUI

struct PopupView: View {
    @State var title: String
    @State var content: String
    @State var buttonText: String
    @State var onClick: () -> Void
    
    var body: some View {
        VStack(alignment: .center, spacing: .zero) {
            Image(systemName: "info.circle.fill")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .foregroundStyle(.pink)
            
            Text(title)
                .font(.system(size: 30, weight: .bold))
                .padding ()
            
            Text(content)
                .font(.body)
                .frame(width: 300)
                .padding(.bottom)
            
            IconButtonView(text: self.buttonText, icon: nil, color: Color.white, onClick: self.onClick)
        }
        .padding()
        .multilineTextAlignment(.center)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView(title: "Title", content: "Lorem ipsum dolor sit amet", buttonText: "Click", onClick: {})
    }
}
