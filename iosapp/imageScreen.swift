//
//  imageScreen.swift
//  iosapp
//
//  Created by gikwegbu on 12/06/2022.
//

import SwiftUI

struct imageScreen: View {
    var body: some View {
        var color = #colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)
//        Image("single")
        Image("smiley")
            .resizable()
            .renderingMode(.template)
//            .aspectRatio(contentMode: .fill)
            .scaledToFit()
//            .frame(width: 500, height: 900)
            .frame(width: 300, height: 300)
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 15)
//                Ellipse()
//            )
            .foregroundColor(Color(color))
    }
}

struct imageScreen_Previews: PreviewProvider {
    static var previews: some View {
        imageScreen()
            .previewInterfaceOrientation(.portrait)
    }
}
