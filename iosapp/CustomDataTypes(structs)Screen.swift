//
//  CustomDataTypes(structs)Screen.swift
//  iosapp
//
//  Created by gikwegbu on 18/08/2022.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isOnline: Bool
    let isVerified: Bool
}

struct CustomDataTypes_structs_Screen: View {
    @State var users: [UserModel] = [
        UserModel(
            displayName: "George Ikwegbu",
            userName: "Mr.Browny",
            followerCount: 500,
            isOnline: true,
            isVerified: true
        ),
        UserModel(
            displayName: "Ugochi Mark",
            userName: "UC",
            followerCount: 300,
            isOnline: false, 
            isVerified: true
        ),
        UserModel(
            displayName: "Emeka Akpan",
            userName: "Akpi",
            followerCount: 60,
            isOnline: true,
            isVerified: false
        ),
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(users) {user in
                    HStack(alignment: .top){
                        Image(systemName: "person")
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(user.isOnline ? Color.green : Color.gray)
                            .cornerRadius(100)
                            
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .fontWeight(.bold)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if (user.isVerified) {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack(alignment: .trailing){
                            Text("\(user.followerCount)")
                                .fontWeight(.bold)
                            Text("Followers")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            
        }
        .navigationTitle("User's List")
        
        
    }
}

struct CustomDataTypes_structs_Screen_Previews: PreviewProvider {
    static var previews: some View {
        CustomDataTypes_structs_Screen()
    }
}
