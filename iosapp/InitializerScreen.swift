//
//  InitializerScreen.swift
//  iosapp
//
//  Created by gikwegbu on 15/06/2022.
//

import SwiftUI

struct InitializerScreen: View {
//    Working with Initializers
    let bgColor: Color
    let count: Int
    let title: String
    
//    By Default, this is what lines 41 to 43 is doing,
//    Creating a Constructor-like pattern to house the passed in data.
//    init(bgColor: Color, count: Int, title: String) {
//    init(count: Int, title: String) {
    init(count: Int, fruit: Fruit) {
//        self.bgColor = bgColor
        self.count = count
        
//        if (title == "Apples") {
//            self.bgColor = Color.red
//        } else {
//            self.bgColor = Color.purple
//        }
        if(fruit == .apple) {
            self.bgColor = Color.red
            self.title = "Apples"
        } else {
            self.bgColor = Color.purple
            self.title = "Oranges"
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .fontWeight(.black)
                .underline()
                .padding(.vertical, 5)
            Text(title)
                .fontWeight(.medium)
        }
        .foregroundColor(.white)
        .frame(width: 150, height: 150)
        .background(bgColor)
        .cornerRadius(15)
    }
}

struct InitializerScreen_Previews: PreviewProvider {
    static var previews: some View {
//        InitializerScreen(count: 55, title: "Apples")
        HStack {
            InitializerScreen(count: 55, fruit: .orange)
            InitializerScreen(count: 500, fruit: .apple)
        }
//        InitializerScreen(bgColor: Color.purple, count: 55, title: "Apples")
    }
}
