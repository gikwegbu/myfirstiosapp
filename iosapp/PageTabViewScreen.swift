//
//  PageTabViewScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/08/2022.
//

import SwiftUI

struct PageTabViewScreen: View {
    @State var selectedTab: Int = 0
    
    let tabData: [TabData] = [
//        "heart.fill", "globe", "house.fill", "person.fill"
        TabData(image: Image(systemName: "heart.fill"), tag: 0),
        TabData(image: Image(systemName: "globe"), tag: 1),
        TabData(image: Image(systemName: "house.fill"), tag: 2),
        TabData(image: Image(systemName: "person.fill"), tag: 3),
    ]
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                ForEach(tabData) { data in
                    data.image
                        .resizable()
                        .scaledToFit()
                        .padding(50)
                        .foregroundColor(.white)
                        .tag(data.tag)

                }
            }
            .background(
                RadialGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .center,
                    startRadius: 5,
                    endRadius: 300
                )
            )
            .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
            
            Spacer()
        }
    }
}

struct TabData: Identifiable {
    var id = UUID()
    var image: Image
    var tag: Int
}

struct PageTabViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        PageTabViewScreen()
    }
}
