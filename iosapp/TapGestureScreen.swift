//
//  TapGestureScreen.swift
//  iosapp
//
//  Created by gikwegbu on 18/08/2022.
//

import SwiftUI

struct TapGestureScreen: View {
    @State var bgColor: Color = Color.green
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(bgColor)
                .frame(height: 200)
                
            
            Button {
                bgColor = Color.red
            } label: {
                Text("Submit")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.cornerRadius(25.0))
            }
            
            Text("Click Me")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue.cornerRadius(25.0))
//                .onTapGesture {
//                    bgColor = Color.gray
//                }
                .onTapGesture(count: 2) { // This means double tap
                    bgColor = Color.blue
                }
            
            Spacer()

        }
        .padding()
    }
}

struct TapGestureScreen_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureScreen()
    }
}
