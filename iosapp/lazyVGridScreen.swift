//
//  lazyVGridScreen.swift
//  iosapp
//
//  Created by gikwegbu on 25/06/2022.
//

import SwiftUI

struct lazyVGridScreen: View {
    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        This will fit as much rectangle as possible, to the smallest size of 50, and max of 300
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil)
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
        
        
    ]
    var body: some View {
            
            ScrollView{
                Rectangle()
                    .fill(Color.white)
                    .frame(height: 400)
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [.sectionHeaders],
                    content: {
                        Section(header:
                                    Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .padding(),
                                content: {
                            ForEach(0..<50, content: {index in
                                Rectangle()
                                    .frame(height: 150)
                            })
                        })
                        Section(header:
                                    Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.teal)
                            .padding(),
                                content: {
                            ForEach(0..<50, content: {index in
                                Rectangle()
                                    .fill(Color.orange)
                                    .frame(height: 150)
                                    
                            })
                        })
                        
                    })
                
//                LazyVGrid(columns: columns, content: {
//                    ForEach(0..<50, content: {index in
//                        Rectangle()
//                            .frame(height: 150)
//                    })
//                })
            }
            
            
        
    }
}

struct lazyVGridScreen_Previews: PreviewProvider {
    static var previews: some View {
        lazyVGridScreen()
    }
}
