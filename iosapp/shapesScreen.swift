//
//  shapesScreen.swift
//  iosapp
//
//  Created by gikwegbu on 05/06/2022.
//

import SwiftUI

struct shapesScreen: View {
    var body: some View {
        Circle()
//            .fill(Color.teal)
//            .foregroundColor(Color.red)
//            .stroke()
//            .stroke(Color.red, lineWidth: 20)
//            .stroke(Color.green, style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round, dash: [22] ))
            .trim(from: 0.3 , to: 1.0)
            .stroke(Color.green, lineWidth: 20)
            .frame(width: 300, height: 200)
            
    }
}

struct shapesScreen_Previews: PreviewProvider {
    static var previews: some View {
        shapesScreen()
    }
}
