//
//  PopoverScreen.swift
//  iosapp
//
//  Created by gikwegbu on 31/07/2022.
//

import SwiftUI

struct PopoverScreen: View {
    @State var showNewScreen: Bool = false
    var body: some View {
// Various ways to create popover
// 1. sheets
// 2. animations
// 3. transitions
        
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()

            }
            // Method 1: sheets
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            // Method 2: transition
//            ZStack{
//                // Adding a ZStack, helps in the transition of popping out this NewScreen smoothly
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.easeInOut(duration: 1))
//                }
//            }
//            .zIndex(2.0)
            
            // Method 3: animation offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
            
        }
        
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple.edgesIgnoringSafeArea(.all)
            
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(20)
            })
        }
    }
}

struct PopoverScreen_Previews: PreviewProvider {
    static var previews: some View {
        PopoverScreen()
//        NewScreen()
    }
}
