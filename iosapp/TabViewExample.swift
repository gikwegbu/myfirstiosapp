//
//  TabViewExample.swift
//  iosapp
//
//  Created by gikwegbu on 14/08/2022.
//

import SwiftUI

struct TabViewExample: View {
    @State private var selectedTab: Int = 0
    let tabData = [
        TabItem( title: Text("Home"), image: Image(systemName: "house.fill"), tag: 1),
        TabItem( title: Text("Profile"), image: Image(systemName: "person.fill"), tag: 2),
        TabItem( title: Text("Browse"), image: Image(systemName: "globe"), tag: 3),
        TabItem( title: Text("Favorite"), image: Image(systemName: "flame.fill"), tag: 4)
    ]
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(tabData) { data in
                Text("\(data.title)")
                    .tabItem {
                        data.title
                        data.image
                    }.tag(data.tag)
            }
        }
    }
}

struct TabItem: Identifiable {
    var id = UUID()
    var title: Text
    var image: Image
    var tag: Int
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}
