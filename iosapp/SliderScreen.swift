//
//  SliderScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/08/2022.
//

import SwiftUI

struct SliderScreen: View {
    @State var sliderValue: Double = 2
    @State var bgColor: Color = .teal
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
//                "\(sliderValue)"
                String(format: "%0.2f", sliderValue)
            )
// The defualt slider settings only moves from 0 to 1, instead of 10
//            Slider(value: $sliderValue)
            
// The slider with the "in", meaning inconclusion, allows you to specify the range properly, but this doesn't have steps
//           Slider(value: $sliderValue,
//                   in: 1...5)
            
// Adding a slider with steps
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 0.5,
                onEditingChanged: { (_) in
                        bgColor = .red
                    print("hello")
                },
                minimumValueLabel:
                    Text("1")
                    .foregroundColor(.pink)
                    .font(.title)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Slider")
                }
            )
                .accentColor(bgColor)
        }
    }
}

struct SliderScreen_Previews: PreviewProvider {
    static var previews: some View {
        SliderScreen()
    }
}
