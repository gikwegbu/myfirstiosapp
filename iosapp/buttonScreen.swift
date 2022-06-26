//
//  buttonScreen.swift
//  iosapp
//
//  Created by gikwegbu on 26/06/2022.
//

import SwiftUI

struct buttonScreen: View {
    @State var title: String = "This is my title"
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Click Me!") {
                self.title = "Button was clicked"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Button with action was clicked"
            } label: {
                Text("Button".uppercased())
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button(action: {
                    self.title = "The third button was clicked..."
                }, label: {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.red)
                        )
                }
            )
            
            Button {
                self.title = "Button with capsule clicked"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 25)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }


        }
    }
}

struct buttonScreen_Previews: PreviewProvider {
    static var previews: some View {
        buttonScreen()
    }
}
