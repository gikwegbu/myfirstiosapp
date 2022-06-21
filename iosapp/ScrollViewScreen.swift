//
//  ScrollViewScreen.swift
//  iosapp
//
//  Created by gikwegbu on 21/06/2022.
//

import SwiftUI

struct ScrollViewScreen: View {
    var body: some View {
        
//        This scrollView, by default, has the scrollbar
//        ScrollView {
//            VStack {
//                ForEach(0..<200, content: {index in
//                    Rectangle()
//                        .fill(Color.teal)
//                    .frame(height: 250)
//                })
//
//            }
//        }
        
//        This scrollview has like a horizontal scroll effect, and ability to hid the scroll indicator
//        ScrollView(.horizontal, showsIndicators: false, content: {
            
//            VStack{
//                ForEach(0..<40, content: {index in
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: .infinity, height: 200, alignment: .center)
//                })
//            }
//            HStack{
//                    ForEach(0..<40, content: {index in
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: 300, height: 200, alignment: .center)
//                    })
//                }
//        })
        
        ScrollView(.vertical, showsIndicators: false, content: {
//            VStack{
//            Used in Loading large data
            LazyVStack{
                ForEach(0..<25, content: { index in
                    
                        ScrollView(.horizontal, showsIndicators: false, content: {
//                            HStack{
                            LazyHStack{
                            ForEach(0..<15, content: {index in
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            })
                        }
                        })
                    
                })
            }
        })
        
    }
}

struct ScrollViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewScreen()
    }
}
