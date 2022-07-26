//
//  ExtractedFunctionsScreen.swift
//  iosapp
//
//  Created by gikwegbu on 12/07/2022.
//

import SwiftUI

struct ExtractedFunctionsScreen: View {
    @State var backgroundColor: Color = Color.pink;
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Title")
                    .font(.largeTitle)
                
                Button {
                    buttonPressed()
                } label: {
                    Text("PRESS ME")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }

            }
            
           
        }
    }
    func buttonPressed () {
        backgroundColor = .yellow;
    }
}

struct ExtractedFunctionsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsScreen()
    }
}
