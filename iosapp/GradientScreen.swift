//
//  GradientScreen.swift
//  iosapp
//
//  Created by gikwegbu on 05/06/2022.
//

import SwiftUI

struct GradientScreen: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(
//                Color("CustomColor")
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//            )
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))]),
//                    center: .leading,
//                    startRadius: 6,
//                    endRadius: 400
//                )
                AngularGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))]),
//                    center: .center,
                    center: .topLeading,
                    angle: .degrees(225)
                )
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientScreen_Previews: PreviewProvider {
    static var previews: some View {
        GradientScreen()
    }
}
