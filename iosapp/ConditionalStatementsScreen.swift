     //
//  ConditionalStatementsScreen.swift
//  iosapp
//
//  Created by gikwegbu on 27/07/2022.
//

import SwiftUI

struct ConditionalStatementsScreen: View {
    @State var showCircle: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            if !showCircle {
                ProgressView()
            }
            
//            if showCircle == true {
//                if showCircle{
                    if !showCircle{
                Circle().frame(width: 100, height: 100)
                    } else {
                        Rectangle()
                            .frame(width: 100, height: 100)
                    }
            Spacer()
        }
        
    }
}

struct ConditionalStatementsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatementsScreen()
    }
}
