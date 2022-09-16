//
//  TabAndPageTabeViewScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/08/2022.
//

import SwiftUI

struct TabAndPageTabeViewScreen: View {
    @State var selectedTab: Int = 0
    var body: some View {
//        TabView {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            .tag(0)
            Text("Browse".uppercased())
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            Text("Profile".uppercased())
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.teal)
    }
}

struct TabAndPageTabeViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabAndPageTabeViewScreen()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(edges: .top)
            VStack {
                Text("Home".uppercased())
                    .font(.largeTitle)
                .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Profile Page")
                        .font(.headline)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .background(Color.white.cornerRadius(100))
                        .foregroundColor(.red)
                }
            }
            
            

        }
    }
}
