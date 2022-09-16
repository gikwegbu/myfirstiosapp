//
//  BadgeScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/09/2022.
//

import SwiftUI

/*
 Badges are only displayed in List, Rows and TabView
 */


// Do know that the default color on the tab items is the accent color in the app settings, to adjust, go to the Assets, and alter it

//i.e, go to Assets, in your root project directory, click on accentColor, open the right sidebar, by tapping on the top right icon, select the universion previewer, then click on color palette to choose from the color scheme
struct BadgeScreen: View {
    var body: some View {
        List{
            Text("Indomie")
                .badge("New")
            Text("Egg")
                .badge(500)
        }
//        TabView{
//            Color.teal
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Likes")
//                }
//                .badge(50) // when you use 0, the badge won't just appear...
//            Color.blue
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .badge("New")
//        }
    }
    
}

struct BadgeScreen_Previews: PreviewProvider {
    static var previews: some View {
        BadgeScreen()
    }
}
