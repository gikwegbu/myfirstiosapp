//
//  AppStorageScreen.swift
//  iosapp
//
//  Created by gikwegbu on 12/09/2022.
//

import SwiftUI

/**
 
    In toda's episode of Becoming A World Class SwiftUI developer, we will be learning about AppStorage,
    AppStorage is like LocalStorage in browsers,
    Firstly, we will learn about the UserDefaults.standard, which is from the UIKit, used to store items (literally, any DataType)
    Secondly, we will learn about the AppStorage, which is used by SwiftUi, to store Items.
 
    Furthermore, you won't have the need to UserDefaults.standard.set(name, forKey: "Username") so as to update the data,
    Once the variable updates, the value in the AppStorage gets updated ASAP
 
 */

struct AppStorageScreen: View {
//    @State var username: String?
    @AppStorage("Username") var username: String?
    var body: some View {
        VStack{
         Text(username ?? "Add Username")
            
            Button {
                let name: String = "Mr.George Ikwegbu"
                username = name
//                UserDefaults.standard.set(name, forKey: "Username")
            } label: {
                Text("Save")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue.cornerRadius(20))
            }

        }
//        .onAppear {
//            username = UserDefaults.standard.string(forKey: "Username")
//        }
    }
}

struct AppStorageScreen_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageScreen()
    }
}
