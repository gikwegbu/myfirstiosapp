//
//  OnSubmitLabel.swift
//  iosapp
//
//  Created by gikwegbu on 15/09/2022.
//

import SwiftUI

struct OnSubmitLabel: View {
    @State private var username: String = ""
    var body: some View {
        VStack {
            TextField("Github username", text: $username)
                .padding(.horizontal, 20)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
            .background(Color.gray.brightness(0.3).cornerRadius(10))
//            .submitLabel(.continue)
            .submitLabel(.done)
            .onSubmit {
                print("Guuuuuy")
            }
        }
        .padding(.horizontal, 30)
    }
}

struct OnSubmitLabel_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmitLabel()
    }
}
