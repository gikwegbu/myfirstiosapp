//
//  backgroundAndOverlayScreen.swift
//  iosapp
//
//  Created by gikwegbu on 13/06/2022.
//

import SwiftUI

struct backgroundAndOverlayScreen: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
////                    .fill(Color.blue)
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
////                    .fill(Color.red)
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .trailing, endPoint: .leading))
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
//        Working with Overlays mostly...
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 120, height: 120)
//            )
        
//        Working with alignments on overlays and background
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                ,alignment: .topLeading
//            )
        let _shadowColor = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.4561153184))
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                            startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: _shadowColor, radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("5")
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            )
//                            .shadow(color: _shadowColor, radius: 10, x: 10, y: 10)
                            .background(
                                Circle()
                                    .fill(Color.white)
//                                    .fill(_shadowColor)
                                    .frame(width: 35, height: 35)
                            )
                        ,alignment: .bottomTrailing
                    )
                
            )
    }
}

struct backgroundAndOverlayScreen_Previews: PreviewProvider {
    static var previews: some View {
        backgroundAndOverlayScreen()
    }
}
