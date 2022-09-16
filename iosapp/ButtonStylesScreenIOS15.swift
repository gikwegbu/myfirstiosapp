//
//  ButtonStylesScreenIOS15.swift
//  iosapp
//
//  Created by gikwegbu on 14/09/2022.
//

import SwiftUI

struct ButtonStylesScreenIOS15: View {
    var body: some View {
        VStack {
            
            // Here the styling is on the Text, so it takes up the fullwidth
            Button {
                //
            } label: {
                Text("Normal Button")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
//            .buttonBorderShape(.capsule)
            .buttonBorderShape(.roundedRectangle(radius: 40))
            .controlSize(.large)

            
            // Here and subsequently, the styling is on the button, so the frame setting are there, but the color will only appear on the size of the text...nothing more nothing less...
            Button("Click Meee") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            .controlSize(.large)
            
            
            Button("Click Meee") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.regular)
            
            
            Button("Click Meee") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            
            Button("Click Meee") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            .controlSize(.mini)
        }
        .padding()
    }
}

struct ButtonStylesScreenIOS15_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesScreenIOS15()
            .preferredColorScheme(.dark)
    }
}
