//
//  ToggleScreen.swift
//  iosapp
//
//  Created by gikwegbu on 11/08/2022.
//

import SwiftUI

struct ToggleScreen: View {
    @State var toggleSwitch: Bool = false
    var body: some View {
        VStack {
            HStack{
                Text("Status: ")
                Text(toggleSwitch ? "Online" : "Offline")
            }
            Toggle(
                isOn: $toggleSwitch) {
                Text("Label")
            }
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleScreen_Previews: PreviewProvider {
    static var previews: some View {
        ToggleScreen()
    }
}
