//
//  ProfileViewScreen.swift
//  iosapp
//
//  Created by gikwegbu on 13/09/2022.
//

import SwiftUI

struct ProfileViewScreen: View {
    // AppStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("\(currentUserAge ?? 0) years old! \(currentUserGender ?? "unknown").")
            
            Text("Sign Out")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 40 )
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black.cornerRadius(10))
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        
        .background(Color.white.cornerRadius(15))
        .shadow(
            color: .gray,
            radius: 10,
            x: 10,
            y: 20
        )
        .padding(.horizontal, 10)
    }
    
    func signOut () {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

struct ProfileViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewScreen()
    }
}
