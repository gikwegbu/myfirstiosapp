//
//  StateScreen.swift
//  iosapp
//
//  Created by gikwegbu on 12/07/2022.
//

import SwiftUI

struct StateScreen: View {
    
    @State var backgroundColor: Color = Color.yellow
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    var body: some View {
        
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Button 1 Clicked"
                        count += 1
                        
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .teal
                        myTitle = "Button 2 Clicked"
                        if (count > 0) {
                            count -= 1
                        }
                    }
                }
            }
            .foregroundColor(.white)
        
        }
    }
}

struct StateScreen_Previews: PreviewProvider {
    static var previews: some View {
        StateScreen()
    }
}
