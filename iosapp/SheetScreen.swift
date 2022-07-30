//
//  SheetScreen.swift
//  iosapp
//
//  Created by gikwegbu on 30/07/2022.
//

import SwiftUI

struct SheetScreen: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Open Sheet")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
// NB: You only have one .sheet or .fullScreenCover, per view hierarchy, and don't try to use both of them same time or a conditional statement to reveal or hide multiple sheets here... cus na beans you just wan cook bayi
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SecondScreen()
//            }

        }
        
    }
}

struct SecondScreen: View {
//    This is used to close sheet, like uhmmm, the navigate.pop(context) doing the same on flutter dialogs
    @Environment(\.presentationMode) var presentationMode
    var body: some View  {
        ZStack(alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button(action: {
//                This is used to remove the sheet...
                presentationMode.wrappedValue.dismiss()
            }, label: {
//                Text("Close Sheet")
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })

        }
        
    }
}

struct SheetScreen_Previews: PreviewProvider {
    static var previews: some View {
//        You get to controll which screen gets displayed here
        SheetScreen()
//        SecondScreen()
    }
}
