//
//  AnimationScreen.swift
//  iosapp
//
//  Created by gikwegbu on 27/07/2022.
//

import SwiftUI

struct AnimationScreen: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
//                withAnimation(Animation.default.delay(2.0)){
//                withAnimation(Animation.default.repeatCount(5,autoreverses: true)){
                withAnimation(Animation.default.repeatCount(5,autoreverses: true)){
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .green : .red)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .offset(y: isAnimated ? 300 : 0)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
//                .offset(y: isAnimated ? 300 : 0)
//            Order matters, so we add rotation before the offset
            Spacer()
        }
    }
}

struct AnimationScreen_Previews: PreviewProvider {
    static var previews: some View {
        AnimationScreen()
    }
}
