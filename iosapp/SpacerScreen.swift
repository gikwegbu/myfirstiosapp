//
//  SpacerScreen.swift
//  iosapp
//
//  Created by gikwegbu on 15/06/2022.
//

import SwiftUI

struct SpacerScreen: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
//            This settings will affect every child within the HStack
            .font(.title)
            
//            .foregroundColor(Color.green)
            .padding(.horizontal)
            
            Spacer()
        }
        
    }
}

struct SpacerScreen_Previews: PreviewProvider {
    static var previews: some View {
        SpacerScreen()
    }
}
