//
//  ExtractedSubviewScreen.swift
//  iosapp
//
//  Created by gikwegbu on 26/07/2022.
//

import SwiftUI

struct ExtractedSubviewScreen: View {
    var body: some View {
        ZStack{
            Color.teal.edgesIgnoringSafeArea(.all)
            
            contentLayer
            
        }
    }
//    This is a normal variable used for view
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 5, color: .red)
            MyItem(title: "Oranges", count: 45, color: .orange)
            MyItem(title: "Bananas", count: 23, color: .yellow)
        }
    }
    
}

struct ExtractedSubviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubviewScreen()
    }
}

// This is our Extracted View, which has it's own body and configs
struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
    }
}
