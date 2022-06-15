//
//  stacksScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/06/2022.
//

import SwiftUI

struct stacksScreen: View {
    var body: some View {
//        HStack(alignment: .top, spacing: nil, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        })
        ZStack(alignment: .center, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: .infinity, height: 700)
            VStack(alignment: .center, spacing: nil, content: {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 150, height: 150)
                
                HStack {
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 100, height: 100)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 150, height: 150)
                    
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 100, height: 100)
                }
            })
        })
    }
}

struct stacksScreen_Previews: PreviewProvider {
    static var previews: some View {
        stacksScreen()
    }
}
