//
//  TextSelectionScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/09/2022.
//

import SwiftUI

struct TextSelectionScreen: View {
    var body: some View {
        Text("Tap and hold to select me")
            .textSelection(.enabled)
    }
}

struct TextSelectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionScreen()
    }
}
