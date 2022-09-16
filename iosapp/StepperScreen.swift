//
//  StepperScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/08/2022.
//

import SwiftUI

struct StepperScreen: View {
    // Strideable, this is a continuous 1D value that can be upset and measured, i.e a number
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
// The default stepper, goes by just 1 increment
            Stepper("Stepper \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
// This custom stepper allows us to choose our increment value...
            Stepper(
                "Stepper 2") {
                    // increment
                    incDecWidth(amount: 100)
                } onDecrement: {
                    // decrement
                    incDecWidth(amount: -100)
                }
                .padding()

        }
    }
    func incDecWidth (amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
        
    }
}

struct StepperScreen_Previews: PreviewProvider {
    static var previews: some View {
        StepperScreen()
    }
}
