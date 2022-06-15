//
//  PaddingScreen.swift
//  iosapp
//
//  Created by gikwegbu on 15/06/2022.
//

import SwiftUI

struct PaddingScreen: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.bold)
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("This is the most used introductory sentence in every programming language.")
                .font(.title2)
            
                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 5, y: 10)
        )
        .padding()

        
    }
}

struct PaddingScreen_Previews: PreviewProvider {
    static var previews: some View {
        PaddingScreen()
    }
}
