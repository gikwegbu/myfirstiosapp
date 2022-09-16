//
//  FocusStateScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/09/2022.
//

import SwiftUI

struct FocusStateScreen: View {
    enum OnboardingFields: Hashable {
        case username
        case password
    }
    
    @State private var nameInput: String = ""
//    @FocusState var nameInputFocus: Bool
    @State private var passwordInput: String = ""
//    @FocusState var passwordInputFocus: Bool
    @FocusState private var fieldInFocus: OnboardingFields?
    
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Your name", text: $nameInput, prompt: Text("Username"))
//                .focused($nameInputFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3).cornerRadius(10))
            
            SecureField("Password", text: $passwordInput)
//                .focused($passwordInputFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3).cornerRadius(10))
            
            Button {
                let userNameValid = !nameInput.isEmpty
                let passwordValid = !passwordInput.isEmpty
                if userNameValid && passwordValid {
                    print("Login Successful")
                } else if userNameValid {
                    fieldInFocus = .password
//                    nameInputFocus = false
//                    passwordInputFocus = true
                } else {
                    fieldInFocus = .username
//                    nameInputFocus = true
//                    passwordInputFocus = false
                }
            } label: {
                Text("Login ⚡️")
            }
            .buttonStyle(.bordered)
            .tint(.green)

        }
        .padding(40)
        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.nameInputFocus = true
//            }
        }
    }
}

struct FocusStateScreen_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateScreen()
    }
}
