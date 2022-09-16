//
//  DarkModeScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/08/2022.
//

import SwiftUI

// In this lesson, we will learn how to create adaptive colors, that blends-in in any color mode our device is.

// We will also learn how to add custom colors in our Assets.xcassets

// In the Assets.xcassets, right click, select the create new color set,

struct DarkModeScreen: View {
//    This is used to detect if device is on light or dark mode
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    Text("This text is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This text is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This text is BLACK")
                        .foregroundColor(.black)
                    Text("This text is WHITE")
                        .foregroundColor(.white)
                    Text("This text is globally adaptive!!")
//                    AdaptiveColor, is from our Assets.xcassets
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is toggle with colorScheme")
                        .foregroundColor(colorScheme == .light ? .pink : .blue)
                }
            }
            .navigationTitle("Dark Mode")
        }
        
    }
}

struct DarkModeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DarkModeScreen()
                .preferredColorScheme(.light)
            DarkModeScreen()
                .preferredColorScheme(.dark)
        }
        
    }
}
