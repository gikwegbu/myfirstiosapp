//
//  TernaryOperatorScreen.swift
//  iosapp
//
//  Created by gikwegbu on 27/07/2022.
//

import SwiftUI

struct TernaryOperatorScreen: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }

            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )
            
            Spacer()

        }
        
    }
}

struct TernaryOperatorScreen_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorScreen()
    }
}
