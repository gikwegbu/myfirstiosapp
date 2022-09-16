//
//  onAppearDisappearScreen.swift
//  iosapp
//
//  Created by gikwegbu on 18/08/2022.
//

import SwiftUI

struct onAppearDisappearScreen: View {
    @State var myText: String = "Hello Words..."
    @State var count: Int = 0
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
// This could be used to download image only when it's in view
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                            .onDisappear{
                                count -= 1
                            }
                        
                    }
                }
            }
// The onAppear could be used to load some data onto the screen, as it runs immediately the screen loads.
            
// PS: The onAppear, works directly on any property it's chained to...
            
// The DispatchQueue.main.asyncAfter, is used to form something like a delay, where the deadline is the timer, then using .now() + 5, means adding 5seconds to the current timer
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "Hi New Words..."
                }
               
            })
// This onDisappear, is used to clean up, say functions or anything, before the screen is out of view. Just like dispose in flutter
            .onDisappear(perform: {
                myText = "Bye all Words..."
            })
            .navigationTitle("OnAppear:  \(count)")
        }
    }
}

struct onAppearDisappearScreen_Previews: PreviewProvider {
    static var previews: some View {
        onAppearDisappearScreen()
    }
}
