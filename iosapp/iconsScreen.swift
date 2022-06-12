//
//  iconsScreen.swift
//  iosapp
//
//  Created by gikwegbu on 12/06/2022.
//

import SwiftUI

struct iconsScreen: View {
    var body: some View {
        var color = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
//        Image(systemName: "heart.fill")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .scaledToFill()
//            .font(.largeTitle)
//            .font(.system(size: 50))
//            .foregroundColor(.green)
            .foregroundColor(Color(color))
            .frame(width: 300, height: 400)
//            .clipped()
    }
}

struct iconsScreen_Previews: PreviewProvider {
    static var previews: some View {
        iconsScreen()
    }
}
