//
//  colorsScreen.swift
//  iosapp
//
//  Created by gikwegbu on 05/06/2022.
//

import SwiftUI

struct colorsScreen: View {
    var body: some View {
//        let color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                Color.primary
//                Color(color)
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 20)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 20, x: 20, y: 20)
    }
}

struct colorsScreen_Previews: PreviewProvider {
    static var previews: some View {
        colorsScreen()
//            .preferredColorScheme(.dark)
            
    }
}
