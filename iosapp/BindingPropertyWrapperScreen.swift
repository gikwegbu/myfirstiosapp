//
//  BindingPropertyWrapperScreen.swift
//  iosapp
//
//  Created by gikwegbu on 26/07/2022.
//

import SwiftUI

struct BindingPropertyWrapperScreen: View {
    @State var bgColor: Color = .green
    @State var title: String = "George"
    var body: some View {
        ZStack{
            bgColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Hello \(title)")
                    .foregroundColor(.white)
                ButtonView(bgColor: $bgColor, title: $title)
            }

        }
    }
}

struct ButtonView: View {
    @Binding var bgColor: Color
    @Binding var title: String
    var body: some View {
        Button {
            bgColor = .red
            title = "Ikwegbu"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
        };
    }
}

struct BindingPropertyWrapperScreen_Previews: PreviewProvider {
    static var previews: some View {
        BindingPropertyWrapperScreen()
    }
}
