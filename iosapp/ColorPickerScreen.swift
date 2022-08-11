//
//  ColorPickerScreen.swift
//  iosapp
//
//  Created by gikwegbu on 11/08/2022.
//

import SwiftUI

struct ColorPickerScreen: View {
    @State var bgColor: Color = .green
    var body: some View {
        ZStack{
            bgColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color", selection: $bgColor, supportsOpacity: true)
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickerScreen_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerScreen()
    }
}
