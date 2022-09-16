//
//  ListSwiptActionScreen.swift
//  iosapp
//
//  Created by gikwegbu on 14/09/2022.
//

import SwiftUI

/*
 To add the swipe action, we will be attaching it on each item's Text
 
 */

struct ListSwiptActionScreen: View {
    @State var fruitArray: [String] = ["Garri", "Beans", "Rice"]
    var body: some View {
        List{
            // In a situation i don't wanna use "fruit in ", i'd just skip, then using '$0', to reference each element in the looping array, and this is for ios 15
            ForEach(fruitArray, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true) {
                            Button("Upload") {}
                                .tint(.blue)
                            Button("Save") {}
                                .tint(.teal)
                            Button("Delete") {}
                                .tint(.red)
                        }
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: false) {
                                Button("Scan") {}
                                    .tint(.green)
                            }
            }
//            .onDelete(perform: deleteItem)
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
    }
}

struct ListSwiptActionScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListSwiptActionScreen()
    }
}
