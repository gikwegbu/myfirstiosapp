//
//  PickerScreen.swift
//  iosapp
//
//  Created by gikwegbu on 11/08/2022.
//

import SwiftUI

struct PickerScreen: View {
    var fruits = ["Banana","Apple", "Peach", "Watermelon", "Grapes" ]
    @State var selection: String = "1"
    
    init() {
        // NOTE: This will change the color everywhere in our application we have segemented controls...
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.systemTeal
        // Creating a variable to hold the NSAttributedString.Key attributes
        var attributes: [NSAttributedString.Key:Any] = [
            // PS: We need the UIColor not normal swift Color
            .foregroundColor: UIColor.white
                
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(
//            [NSAttributedString.Key : Any]?,
            attributes, for: .selected)
//        The For, asks for the current state of the picker

    }
    
    var body: some View {
        VStack {
            HStack{
                
                Text("Age:")
                Text(selection)
            }
//            Normal Example: Not showing label
//            Picker(selection: $selection) {
////                Text("1").tag("1")
////                Text("2").tag("2")
////                Text("3").tag("3")
//                ForEach(18..<100) { num in
//                    Text("\(num)")
//                        .font(.title)
//                        .foregroundColor(.red)
//                        .tag("\(num)")
//                }
//            } label: {
//                Text("Picker")
//            }
            
//            Variation 1: Still not showing label
            Picker(selection: $selection, content: {
                
//                using range approach with self
//                ForEach(0..<fruits.count, id: \.self) {
//                    Text(self.fruits[$0])
//                        .tag(self.fruits[$0])
//                }
                
//                Using normal forEach loop with data
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .tag(fruit)
                }
            }, label: {
                Text("hello")
            })
// NOTE::::
// By default, the pickerStyle, looks like the context menu and all with the MenuPickerStyle(), a click reveals the values to be selected from. But changing the pickerStyle to:
            
//  wheel, Inline, makes it scrollable within it's space, and has that wheel-like stepping sound.
            
//  Segmented, makes it look like a radio tuner for numbers, or a tab-like view, with great transition, when the data is sorta like words
            
// Start typing 'pickerStyle...' to see the other options
//            .pickerStyle(WheelPickerStyle())
            .pickerStyle(SegmentedPickerStyle())
//            .background(Color.gray.opacity(0.3))
            .background(Color.red.opacity(0.3))
        }

    }
}
// NOTE: Because the UI for the picker, comes from the UIKit, to customize it's background and all, we'd need to tap into the UIKit part of the colors.

// To achieve this, we'd need to call init() {}, which is like the first function to run on the view stack

struct PickerScreen_Previews: PreviewProvider {
    static var previews: some View {
        PickerScreen()
    }
}
