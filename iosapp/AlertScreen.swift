//
//  AlertScreen.swift
//  iosapp
//
//  Created by gikwegbu on 04/08/2022.
//

import SwiftUI

struct AlertScreen: View {
    @State var showAlert: Bool = false
    @State var bgColor: Color = Color.gray
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
                
    //            Alert(title: Text("Hello Chief, your first ever alert dialog on iOS")) // This is the simplest alert

        })
        }
    }
    
    func getAlert() -> Alert{
        return Alert(
            title: Text("Delete this item?"),
            message: Text("Of cus yeashh"),
            primaryButton: .destructive(Text("DELETE"), action: {
                bgColor = .teal
            }),
            secondaryButton: .cancel()
        )
    }
}

struct AlertScreen_Previews: PreviewProvider {
    static var previews: some View {
        AlertScreen()
    }
}
