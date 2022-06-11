//
//  TextScreen.swift
//  iosapp
//
//  Created by gikwegbu on 05/06/2022.
//

import SwiftUI

struct TextScreen: View {
    var body: some View {
        Text("This is the beginning of a new life for me it will be just fine".lowercased())
        // .font(.largeTitle)
            .font(.system(size: 40, weight: .semibold, design: .serif))
            .fontWeight(.heavy)
            .underline(true, color: Color.red )
            .baselineOffset(2)
            .multilineTextAlignment(.trailing)
            .foregroundColor(Color.teal)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.3)
        
    }
}

struct TextScreen_Previews: PreviewProvider {
    static var previews: some View {
        TextScreen()
            .previewInterfaceOrientation(.portrait)
    }
}
