//
//  TransitionScreen.swift
//  iosapp
//
//  Created by gikwegbu on 27/07/2022.
//

import SwiftUI

struct TransitionScreen: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack {
                Button("Transition") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                
//                    .opacity(showView ? 1 : 0)
//You have .slide, .move(edge: top, bottom, leading, trailing)
//                    .transition(.slide)
//                    .transition(.move(edge: .trailing))
                
//For transitioning with opacity, use the below
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut))

// You can also control how the transition comes in and leaves
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
//                        removal: .move(edge: .bottom)
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
        
//Use animations only, when Items are already on the screen, and transition when you try to bring in the item onto the screen.
                
                    .animation(.easeInOut)
//                    .animation(.spring())
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionScreen_Previews: PreviewProvider {
    static var previews: some View {
        TransitionScreen()
    }
}
