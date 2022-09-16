//
//  IntroViewScreen.swift
//  iosapp
//
//  Created by gikwegbu on 12/09/2022.
//

import SwiftUI

struct IntroViewScreen: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))],
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height
            )
            .ignoresSafeArea()
            
            // If user is signed in
            if currentUserSignedIn {
                ProfileViewScreen()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingViewScreen()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
                
            }
        }
    }
}

struct IntroViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntroViewScreen()
    }
}
