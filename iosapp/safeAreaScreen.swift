//
//  safeAreaScreen.swift
//  iosapp
//
//  Created by gikwegbu on 25/06/2022.
//

import SwiftUI

struct safeAreaScreen: View {
    var body: some View {
//        I have two approach to using the safearea system
//        1. By putting my ScrollView in a ZStack, and having a color as the first child, then including the .ignoresSageArea() with it or,
        
//        2. Call the background() after the ScrollView, then call the .ignoresSafeArea() after the color of the background
//        ZStack {
//            Color.red
//                .ignoresSafeArea()
            ScrollView{
                VStack(content: {
                    Text("Title Goes Here")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10, content: {index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding()
                    })
                })
            }
            .background(
                Color.teal
//                    .ignoresSafeArea(edges: .top)
//                But it seems like merely calling the background color after the ScrollView, literally creates the background color that covers the safeArea...  
            )
//        }
    }
}

struct safeAreaScreen_Previews: PreviewProvider {
    static var previews: some View {
        safeAreaScreen()
    }
}
