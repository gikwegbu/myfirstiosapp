//
//  NavigationScreen.swift
//  iosapp
//
//  Created by gikwegbu on 31/07/2022.
//

import SwiftUI

struct NavigationScreen: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink(
                    "Hello Ikwegbu",
                    destination: MyOtherScreen()
                )
                
                Text("Hello George")
                Text("Hello George")
                Text("Hello George")

            }
            .navigationTitle("All Inboxes")
// The navigationBarTitleDisplayMode has three options:
// 1. The inline, which places the title statically inline
// 2. Large, which is the default bold text, that switches to inline when screen is scrolled
// 3. automatic, well, does the do...
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true) // This is used to hide the bar, so we could use the navigationLinks well
            
            
            .navigationBarItems(
                leading: HStack{
                    Image(systemName: "person.fill")
                    Image(systemName: "flame")
                        .foregroundColor(.red)
                },
                trailing: NavigationLink(destination: {
                    MyOtherScreen()
                }, label: {
                    Image(systemName: "gear")
                        .accentColor(.gray)
                })
            )
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.teal.edgesIgnoringSafeArea(.all)
            
//                .navigationBarHidden(true)
//                .navigationBarItems(
//                    leading: NavigationLink(destination: {
//                        NavigationScreen()
//                    }, label: {
//                        Image(systemName: "xmark")
//                    })
//                )
            
            VStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Back Button")
                })
                Text("Hello, and Welcome to my Second Screen...")
            }
        }
    }
}

struct NavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationScreen()
    }
}
