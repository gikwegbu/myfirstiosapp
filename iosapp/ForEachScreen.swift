//
//  ForEachScreen.swift
//  iosapp
//
//  Created by gikwegbu on 21/06/2022.
//

import SwiftUI

struct ForEachScreen: View {
    let data: [String] = ["Hi", "How are you doing?", "I'm doing just fine dude...", "Learning Swift is sure fun yhooo "]
    var body: some View {
        VStack {
//            ForEach(0..<10, content: {index in
//                Text("Hello \(index)")
//            })
            ForEach(data.indices) {
                index in
                Text("\(data[index])")
            }
        }
    }
}

struct ForEachScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForEachScreen()
    }
}
