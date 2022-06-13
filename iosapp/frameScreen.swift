//
//  frameScreen.swift
//  iosapp
//
//  Created by gikwegbu on 13/06/2022.
//

import SwiftUI

struct frameScreen: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(width: 200, height: 100, alignment: .center)
            .background(Color.blue)
            .frame(minWidth: 150, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
            .background(Color.teal)
    }
}

struct frameScreen_Previews: PreviewProvider {
    static var previews: some View {
        frameScreen()
    }
}
